package info.thecodinglive.controller;

import info.thecodinglive.model.Team;
import info.thecodinglive.service.TeamService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * @author LeeSooHoon
 */
@Controller
@RequestMapping(value = "/team")
public class TeamController {

    @Autowired
    private TeamService teamService;

    @RequestMapping(value = "/list")
    public String listOfTeams(ModelMap model) {
        model.addAttribute("teams", (List<Team>)teamService.getTeams());

        return "teamlist";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addTeamPage(ModelMap model) {
        model.addAttribute("team", new Team());

        return "team";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addingTeam(@ModelAttribute("teamForm") Team team, Model model, BindingResult result) {
        teamService.addTeam(team);

        String message = "team was successful added";
        model.addAttribute("message", message);

        return "home";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteTeam(@PathVariable Integer id, Model model) {
        teamService.deleteTeam(id);

        String message = "team was successful deleted";
        model.addAttribute("message", message);

        return "home";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editTeamPage(ModelMap model, @PathVariable Integer id) {
        Team team = teamService.getTeam(id);

        model.addAttribute(team);

        return "editTeam";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editTeam(@ModelAttribute("teamForm") Team team, Model model, @PathVariable Integer id) {
        teamService.updateTeam(team);

        String message = "team was successful edited";
        model.addAttribute("message", message);

        return "home";
    }
}
