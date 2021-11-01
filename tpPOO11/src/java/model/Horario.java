/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author danto
 */
public class Horario {
    private int horas;
    private int minutos;
    private int segundos;

    public Horario(int horas, int minutos, int segundos) {
        this.horas = horas;
        this.minutos = minutos;
        this.segundos = segundos;
    }
    
    public String getHorario(){
        String horario = "";
        if(horas<10) horario += "0";
        horario += horas+":";
        if(minutos<10) horario += "0";
        horario += minutos+":";
        if(segundos<10) horario += "0";
        horario += segundos;
        return horario;
    }

    public int getHoras() {
        return horas;
    }

    public void setHoras(int horas) {
        if(horas<0) this.horas = 0;
        else if(horas > 23) this.horas = 0;
        else this.horas = horas;
    }

    public int getMinutos() {
        return minutos;
    }

    public void setMinutos(int minutos) {
        if(minutos<0) this.minutos = 0;
        else if(minutos > 59) this.minutos = 0;
        else this.minutos = minutos;
    }

    public int getSegundos() {
        return segundos;
    }

    public void setSegundos(int segundos) {
        if(segundos<0) this.segundos = 0;
        else if(segundos > 59) this.segundos = 0;
        else this.segundos = segundos;
    }
    
    
    
}
