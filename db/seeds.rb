User.create!([
  { first_name: 'Walter',last_name: 'White', password: 'Password1', email: 'walter@white.meth', admin: true },
  { first_name: 'Jesse',last_name: 'Pinkman', password: 'Password1', email: 'jessie@pinkman.yo', admin: true },
  { first_name: 'Saul',last_name: 'Goodman', password: 'Password1', email: 'saul@goodman.call', admin: true },
  { first_name: 'Skyler',last_name: 'White', password: 'Password1', email: 'skyler@white.com', admin: false },
  { first_name: 'Hank',last_name: 'Schrader', password: 'Password1', email: 'hank@schrader.cop', admin: false },
  { first_name: 'Mike',last_name: 'Ehrmantraut', password: 'Password1', email: 'mike@ehrmantraut.hitman', admin: false }
])

Category.create!([
  { name: "Methamphetamine" },
  { name: "Barrels" },
  { name: "Minerals - not rocks, minerals." }
])

Product.create!([
 { title: "Blue sky", description: "It may be blue, but it's the bomb.", category: Category.all[0], price: 99.99, user: User.all[0] },
 { title: "Classic", description: "better buy a blue sky", category: Category.all[0], price: 50.25, user: User.all[1] },
 { title: "Ruby", description: "No they're minerals.", category: Category.all[0], price: 30.00, user: User.all[4] }
])

Review.create!([
 { content: "If you're committed enough, you can make any story work. I once told a woman I was Kevin Costner, and it worked because I believed it", rating: rand(0..5), user: User.all[2], product: Product.all[0] },
 { content: "All I can do is wait... for the cancer to come back", rating: rand(0..5), user: User.all[3], product: Product.all[2] },
 { content: "Just because you shot Jesse James doesn't mean you are Jesse James.", rating: rand(0..5), user: User.all[5], product: Product.all[1] },
 { content: "Everyone sounds like Meryl Streep with a gun to their head.", rating: rand(0..5), user: User.all[5], product: Product.all[0] },
 { content: "Yeah Mr. White! You really do have a plan! Yeah science!", rating: rand(0..5), user: User.all[1], product: Product.all[1] },
 { content: "Heisenberg? Heisenberg! You two-faced sack of s--t! I will put you under the jail.", rating: rand(0..5), user: User.all[4], product: Product.all[2] },
 { content: "No they're minerals, Jesus Marie!", rating: rand(0..5), user: User.all[4], product: Product.all[2] },
 { content: "I am not in danger, Skyler. I am the danger! A guy opens his door and gets shot and you think that of me? No. I am the one who knocks!'", rating: rand(0..5), user: User.all[0], product: Product.all[1] },
 { content: "You're goddamn right", rating: rand(0..5), user: User.all[0], product: Product.all[0] }
])