package org.example.demo_parameters.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo_parameters.model.Cat;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/form")
public class FormServlet extends HttpServlet {

    private List<Cat> cats;

    @Override
    public void init() throws ServletException {
        cats = new ArrayList<>();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("cats", cats);
        req.getRequestDispatcher("addCat.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String race = req.getParameter("race");
        String favFood = req.getParameter("favFood");
        LocalDate birthDate = LocalDate.parse(req.getParameter("birthDate"));

        cats.add(new Cat(name, race, favFood, birthDate));
        System.out.println(cats);
        doGet(req, resp);

    }
}
