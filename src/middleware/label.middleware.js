const {
  queryLabelByName,
  create,
  addLabel,
} = require('../service/label.service')

const verifyLabelExists = async (ctx, next) => {
  const { labels } = ctx.request.body
  const newLabels = []
  for (const name of labels) {
    const result = await queryLabelByName({ name })
    const labelObj = { name }
    // console.log(result)
    if (result) {
      labelObj.id = result.id
    } else {
      const insertResult = await create({ name })
      labelObj.id = insertResult.insertId
    }
    newLabels.push(labelObj)
  }
  // console.log(newLabels)
  //  for (const label of newLabels) {

  //  }
  ctx.labels = newLabels
  await next()
}

module.exports = {
  verifyLabelExists,
}
