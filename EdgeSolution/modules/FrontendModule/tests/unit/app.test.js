const mocha = require('mocha')
const describe = mocha.describe
const it = mocha.it

const assert = require('assert')
describe('Simple Test', () => {
  it('should return 5', () => {
    assert.equal(1 + 4, 5)
  })
})
