package info.thecodinglive.repository;

import info.thecodinglive.model.Team;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author LeeSooHoon
 */
@Repository
public class TeamDaoImpl implements TeamDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addTeam(Team team) {
        getCurrentSession().save(team);
    }

    @Override
    public void updateTeam(Team team) {
        Team teamToUpdate = getTeam(team.getId());
        teamToUpdate.setTeamName(team.getTeamName());
        teamToUpdate.setRating(team.getRating());
        getCurrentSession().update(teamToUpdate);
    }

    @Override
    public Team getTeam(int id) {
        return (Team) getCurrentSession().get(Team.class, id);
    }

    @Override
    public void deleteTeam(int id) {
        Team team = getTeam(id);

        if (team != null) {
            getCurrentSession().delete(team);
        }
    }

    @Override
    public List<Team> getTeams() {
        return getCurrentSession().createQuery("from Team").list();
    }
}
