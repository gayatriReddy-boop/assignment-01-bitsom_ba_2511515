// OP1: insertMany() — insert all 3 documents from sample_documents.json

db.products.insertMany([
{
  product_id: "E101",
  name: "Gaming Laptop",
  category: "Electronics",
  price: 75000,
  specifications: {
    processor: "Intel i7",
    ram: "16GB",
    storage: "1TB SSD",
    voltage: "220V"
  },
  warranty_years: 2
},

{
  product_id: "C201",
  name: "Men's Denim Jacket",
  category: "Clothing",
  price: 3200,
  size_options: ["S","M","L","XL"],
  material: "Denim Cotton",
  brand: "UrbanStyle"
},

{
  product_id: "G301",
  name: "Organic Almond Milk",
  category: "Groceries",
  price: 250,
  expiry_date: new Date("2024-12-15"),
  package_size: "1L",
  organic: true
}
]);


// OP2: find() — retrieve all Electronics products with price > 20000

db.products.find({
category: "Electronics",
price: { $gt: 20000 }
});


// OP3: find() — retrieve all Groceries expiring before 2025-01-01

db.products.find({
category: "Groceries",
expiry_date: { $lt: new Date("2025-01-01") }
});


// OP4: updateOne() — add a discount_percent field

db.products.updateOne(
{ product_id: "E101" },
{ $set: { discount_percent: 10 } }
);


// OP5: createIndex() — create index on category field

db.products.createIndex({ category: 1 });

// This index improves query performance when filtering products by category.
