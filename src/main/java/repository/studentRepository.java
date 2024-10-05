package repository;

import model.Student;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface studentRepository extends MongoRepository<Student, Integer> {
}
