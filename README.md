# Object Relations Without ActiveRecord: The Magazine Domain 📚🖋️

Welcome to my codebase where I explore object relationships within the domain of Magazines, Authors, and Articles, all without the help of ActiveRecord. This project showcases the power of Ruby's object-oriented programming, array methods, and class relationships.

## 📖 What's Inside?

I've got three key models: 

1. `Author` : The talented minds penning the articles.
2. `Article` : The pieces of written work published in magazines.
3. `Magazine` : The publication platform for multiple articles.

Relationships are set as follows:

- An `Author` has many `Articles`.
- A `Magazine` has many `Articles`.
- An `Article` belongs to both an `Author` and a `Magazine`.
- The relationship between `Author` and `Magazine` is many-to-many.

## 🛠️ Getting Started

Follow these steps to get this application up and running:

1. Clone this repository to your local machine.
2. `cd` into the project folder.
3. Run the application with the command `ruby bin/run`.

The `bin/run` file serves as the main entry point to the application, creating instances and showcasing the methods we've developed.

## 🎯 Features

### Initializers, Readers, and Writers

- `Author` and `Article` can only be initialized with specific parameters and these parameters can't be changed afterwards.
- `Magazine` can be initialized with a name and a category, and both can be updated later.

### Object Relationship Methods

- `Article` can return its `Author` and `Magazine`.
- `Author` can return an array of `Article` instances they've written and a unique array of `Magazine` instances they've contributed to.
- `Magazine` can return an array of `Author` instances who have written for it.

### Associations and Aggregate Methods

- `Author` can add an `Article` to a `Magazine`.
- `Author` can return a unique array of the categories of magazines they've contributed to.
- `Magazine` can find an instance by name, return an array of the titles of all articles written for it, and return an array of authors who have written more than 2 articles for it.

## 📝 Notes

This project has some default tests written in the run file. You may create your own sample instances and try out the code in the console to test for robustness. Feel free to refactor the code to adhere to best practices.

## 🤝 Contributing

If you have any corrections, please raise them as issues or fork and/or clone this repository to contribute 

## 🚀 Let's Get Coding!

Ready to dive in? Then try out this object relations without ActiveRecord! 🎉

## 📝 Author

This project was created by [Amos Wanene](https://github.com/gich2009). Feel free to reach out if you have any questions or just want to connect!

## 📄 License

This project is open source under the MIT license. See the [LICENSE.md](LICENSE.md) file for more information.
