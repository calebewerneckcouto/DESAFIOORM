package com.orm.desafio.entities;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.JoinTable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_participante")
public class Participante {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nome;
    private String email;
    
    @ManyToMany
    @JoinTable(
        name = "participante_bloco",  // Nome da tabela de junção
        joinColumns = @JoinColumn(name = "participante_id"),  // Coluna na tabela de junção que referencia Participante
        inverseJoinColumns = @JoinColumn(name = "bloco_id")  // Coluna na tabela de junção que referencia Bloco
    )
    private Set<Bloco> blocos = new HashSet<>();
    
    public Participante() {
    }

    public Participante(Long id, String nome, String email, Set<Bloco> blocos) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.blocos = blocos;
    }

    // Getters e Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Set<Bloco> getBlocos() {
        return blocos;
    }

    public void setBlocos(Set<Bloco> blocos) {
        this.blocos = blocos;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null || getClass() != obj.getClass())
            return false;
        Participante other = (Participante) obj;
        return Objects.equals(id, other.id);
    }
}
