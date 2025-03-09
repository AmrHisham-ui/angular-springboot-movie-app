import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Movie } from '../models/movie';

@Injectable({
  providedIn: 'root'
})
export class MovieService {
  private apiUrl = 'http://localhost:8080/api/movies';

  constructor(private http: HttpClient) {}

  getMovies(): Observable<Movie[]> {
    const token = sessionStorage.getItem('token');

    let httpOptions = {
      
      headers:new HttpHeaders({
        'Authorization': 'Bearer '+ token,
        'Content-Type': 'application/json'
      }),withCredentials: true
    };
    return this.http.get<Movie[]>(this.apiUrl,httpOptions);
  }

  addMovie(movie: Movie): Observable<Movie> {
    return this.http.post<Movie>(`${this.apiUrl}/add`, movie);
  }

  deleteMovie(movieId: number): Observable<void> {
    return this.http.delete<void>(`${this.apiUrl}/remove/${movieId}`);
  }

  searchMovies(title: string): Observable<Movie[]> {
    const params = new HttpParams().set('title', title);
    return this.http.get<Movie[]>(`${this.apiUrl}/search`, { params });
  }
  
}
