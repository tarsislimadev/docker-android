const { Select, MultiSelect, Input } = require('enquirer')
const debug = require('debug')('DEBUG:ask')
const path = require('path')
const fs = require('fs')

// CONSTANTS

const PATH_TAGS = path.resolve('.', 'tags')
const TAGS = fs.readdirSync(PATH_TAGS)
if (TAGS?.length === 0) throw new Error('Tags not found')

// HELPERS

const booleanQuestion = async (message) =>
  await (new Select({ message, choices: ['yes', 'no'] })).run() === 'yes'

// FUNCTIONS

const askBuild = async (tags) => {
  const choices = [...tags]

  const question = new MultiSelect({
    message: 'Which tags to build?',
    choices
  })

  return await question.run()
}

const askPublish = async (buildTags = []) => {
  const choices = buildTags.length > 0 ? [...buildTags] : [...TAGS]

  const question = new MultiSelect({
    message: 'Which tags to publish?',
    choices
  })

  return await question.run()
}

const mirrorTag = async (tag) => {
  const isMirrorTag = await booleanQuestion(`Tag ${tag}?`)

  if (isMirrorTag) {
    const input = new Input({ message: `Choose names to ${tag}` })
    const names = await input.run()

    return names.split(',').map(name => name.trim())
  }
}

const mirrorTags = async (tags) => {
  const mirrors = {}

  for (let t = 0; t < tags?.length; t++) {
    const tag = tags[t]
    mirrors[tag] = await mirrorTag(tag)
  }

  return mirrors
}

const askMirror = async (publishTags = []) => {
  const makeMirrors = await booleanQuestion('Tag mirrors?')

  if (makeMirrors) {
    const tagsToMirror = publishTags.length > 0
      ? [...publishTags]
      : [...TAGS]

    return await mirrorTags(tagsToMirror)
  }

  return []
}

const runBuild = async (tagsToBuild) => {
  debug('tags to build', tagsToBuild)
  // TODO
}

const runMirror = async (tagsToMirror) => {
  debug('tags to mirror', tagsToMirror)
  // TODO
}

const runPublish = async (tagsToPublish) => {
  debug('tags to publish', tagsToPublish)
  // TODO
}

const runActions = async (actions = []) => {
  let tagsToBuild = []
  let tagsToPublish = []
  let tagsToMirror = []

  if (actions.indexOf('build') !== -1) {
    tagsToBuild = await askBuild(TAGS)
  }

  if (actions.indexOf('publish') !== -1) {
    tagsToPublish = await askPublish(tagsToBuild)
    tagsToMirror = await askMirror(tagsToPublish)
  }

  await runBuild(tagsToBuild)
  await runMirror(tagsToMirror)
  await runPublish(tagsToPublish)
}

const askActions = async () => {
  const question = new MultiSelect({
    message: 'Which actions do you want to do?',
    choices: ['build', 'publish']
  })

  return await question.run()
}

// RUN

(async () => runActions(await askActions()))()
