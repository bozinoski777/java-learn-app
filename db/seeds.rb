# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Material.create!([
    {category: "Java Building Blocks",
    sub_category: "Understanding the Java Class Structure",
    title: "Fields and Methods",
    content: "Java classes are made up of methods and fields, these are called members of a class. Fields store the state, methods act on the state and modify it. If a change needs to be saved it is stored in a field."},
    {category: "Java Building Blocks",
    sub_category: "Understanding the Java Class Structure",
    title: "Fields and Methods",
    content: "A keyword is a special - reserved word in Java and it can't be used as a class or variable name."},
    {category: "Java Building Blocks",
    sub_category: "Understanding the Java Class Structure",
    title: "Fields and Methods",
    content: "A method is an operation that can be called."},
    {category: "Java Building Blocks",
    sub_category: "Understanding the Java Class Structure",
    title: "Fields and Methods",
    content: "A parameter is required information to be supplied when calling a method."},
    {category: "Java Building Blocks",
    sub_category: "Understanding the Java Class Structure",
    title: "Comments",
    content: "Comments aren't executable code and can be placed anywhere."},
    {category: "Java Building Blocks",
    sub_category: "Understanding the Java Class Structure",
    title: "Comments",
    content: "- Single line - begin with two slashes `//`.
    - Multi line - begin with `/*` and end with `*/`.
    - Java-doc - begins with `/**` and ends with `*/`. It is special and understood by the Java-doc tool."},
    {category: "Core Java APIs",
    sub_category: "Understanding Java Arrays",
    title: "Creating an Array of Primitives",
    content: "int[] numbers1 = new int[3]; - specifies the capacity."},
    {category: "Core Java APIs",
    sub_category: "Understanding Java Arrays",
    title: "Creating an Array of Primitives",
    content: "int[] numbers2 = new int[] {42, 33, 32}; - specifies the capacity and the initial values."},
    {category: "Core Java APIs",
    sub_category: "Understanding Java Arrays",
    title: "Creating an Array of Primitives",
    content: "Legal ways: int[] numAnimals; int [] numAnimals; int numAnimals[]; int numAnimals [];."}
])