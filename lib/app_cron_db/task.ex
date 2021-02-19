defmodule AppCronDb.Task do
  def do_task do
    person = %AppCronDb.Person{first_name: "Name", last_name: "Surname", age: 25}
    {:ok, person} = AppCronDb.Repo.insert(person)
    IO.inspect "Inserted: [id = #{person.id}, name = #{person.first_name}, surname = #{person.last_name}, age = #{person.age}]"
  end
end
