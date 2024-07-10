console.log("Entro a GetRequest");
document.addEventListener("DOMContentLoaded", function() {

  const movieSection = document.getElementById("pelis");
  const movies = [];

  function loadMovieList() {
    console.log("Entro a loadMovieList");
    fetch("/pelis24115/movies?action=getAll")
      .then(response => response.json())
      .then(data => {
        console.log("data : "+data);
        const tbody = document.getElementById('table-body');

        data.forEach(movie =>{
          movies.push(movie);

          const row = document.createElement('tr');
                        row.innerHTML = `
                            <td width="10%">${movie.nombre}</td>
                            <td width="40%">${movie.descripcion}</td>
                            <td width="10%">${movie.genero}</td>
                            <td width="10%">${movie.calificacion}</td>
                            <td width="5%">${movie.anio}</td>
                            <td width="20%">${movie.director}</td>                            
                            <td width="5%">${movie.estrellas}</td>                            
                        `;
                        tbody.appendChild(row);
                    });

      });
  }
  loadMovieList();
});