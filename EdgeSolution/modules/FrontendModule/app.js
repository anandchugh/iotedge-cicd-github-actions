'use strict'

const express = require('express')
const http = require('http')
const app = express()
const port = 3000

const backendApiUrl = 'http://localhost:5000/'

app.get('/', (req, res) => {
  let data = ''

  http.get(backendApiUrl, (resp) => {
    console.log('Calling backend api to get user details')
    resp.on('data', (chunk) => {
      data += chunk
    })

    resp.on('end', () => {
      console.log('Data Received:' + data)
      res.send(data)
    })
  })
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
