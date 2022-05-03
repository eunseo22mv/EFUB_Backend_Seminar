package eunseo.seminar.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import eunseo.seminar.domain.entity.Board;

public interface BoardRepository extends JpaRepository<Board, Long> {
}