const express = require('express');
const cors = require('cors');
const items = require('./data/items');

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

let currentIndex = 0;

function buildResponse(index) {
  const total = items.length;
  const safeIndex = ((index % total) + total) % total;
  currentIndex = safeIndex;
  return {
    index: safeIndex,
    item: items[safeIndex],
    total
  };
}

app.get('/item', (req, res) => {
  res.json(buildResponse(currentIndex));
});

app.get('/item/next', (req, res) => {
  const nextIndex = currentIndex + 1;
  res.json(buildResponse(nextIndex));
});

app.get('/item/prev', (req, res) => {
  const prevIndex = currentIndex - 1;
  res.json(buildResponse(prevIndex));
});

app.get('/item/:id', (req, res) => {
  const total = items.length;
  let id = Number(req.params.id);

  if (Number.isNaN(id)) {
    return res.status(400).json({ error: 'id must be a number' });
  }

  if (id < 0 || id >= total) {
    return res.status(404).json({ error: 'item not found' });
  }

  currentIndex = id;
  res.json({
    index: currentIndex,
    item: items[currentIndex],
    total
  });
});

app.get('/', (req, res) => {
  res.send('DropWatch backend is running. Try /item');
});

app.listen(PORT, () => {
  console.log(`Server listening on http://localhost:${PORT}`);
});
