@extends('layout.app')

@section('content')

<style>
    .bg-image {
        background-image: url('{{ asset("background2.jpg") }}');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        width: 100%;
        height: 100vh; /* Sesuaikan tinggi sesuai kebutuhan */
        position: relative; /* Tambahkan properti position */
    }

    .content-overlay {
        background-color: rgba(255, 255, 255, 0.8); /* Anda dapat menyesuaikan opasitas di sini */
        padding: 20px;
        position: absolute; /* Tambahkan properti position */
        top: 50%; /* Posisikan ke bagian tengah vertikal */
        left: 50%; /* Posisikan ke bagian tengah horizontal */
        transform: translate(-50%, -50%); /* Geser ke tengah */
        max-width: 80%; /* Maksimum lebar konten */
    }
</style>

<div class="bg-image">
    <div class="content-overlay">
        <div class="card mt-4 mb-5">
            <div class="card-body">
                <div class="text-center">
                    <span class="fs-5"><b>Aplikasi Rekomendasi Pakaian Musim Dingin Dengan Metode Topsis</b></span>
                </div>
            </div>
        </div>
        <center><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#tentangModal">
            Tentang
        </button></center>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="tentangModal" tabindex="-1" aria-labelledby="tentangModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="tentangModalLabel">Tentang Aplikasi Sistem Rekomendasi Pakaian Dingin yang Stylish</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>
                    Dalam menghadapi cuaca dingin yang seringkali menuntut gaya dan kenyamanan, aplikasi ini menggunakan Sistem Pendukung Keputusan (SPK) berdasarkan Metode TOPSIS (Technique for Order Preference by Similarity to Ideal Solution) untuk merekomendasikan pakaian yang tidak hanya stylish tetapi juga sesuai dengan preferensi dan kebutuhan pengguna.
                </p>
                <p>
                    Metode TOPSIS digunakan untuk mengevaluasi berbagai alternatif pakaian berdasarkan kriteria-kriteria seperti harga, kualitas bahan, desain pakaian, kenyamanan, ketersediaan ukuran, dan durabilitas. Bobot untuk setiap kriteria adalah sebagai berikut: Harga (5), Kualitas Bahan (5), Desain Pakaian (4), Kenyamanan (5), Ketersediaan Ukuran (4), dan Durabilitas (5).
                </p>
                <p>
                    <b>Tahapan Penggunaan Sistem Rekomendasi Pakaian:</b>
                    <ul>
                        <li><b>Identifikasi Kriteria:</b> Setiap kriteria dinilai dengan bobot yang sesuai untuk mencerminkan pentingnya dalam keputusan rekomendasi pakaian.</li>
                        <li><b>Penentuan Bobot Kriteria:</b> Harga (5), Kualitas Bahan (5), Desain Pakaian (4), Kenyamanan (5), Ketersediaan Ukuran (4), Durabilitas (5).</li>
                        <li><b>Normalisasi Data:</b> Data tentang pilihan pakaian dinormalisasi untuk memperhitungkan skala dan variasi antar kriteria.</li>
                        <li><b>Pembentukan Matriks Keputusan Ternormalisasi Terbobot:</b> Matriks keputusan dinormalisasi dikalikan dengan bobot kriteria untuk menghasilkan nilai relatif masing-masing alternatif pakaian.</li>
                        <li><b>Penentuan Solusi Ideal Positif dan Negatif:</b> Solusi ideal positif (yang ideal) dan negatif (yang tidak diharapkan) ditentukan berdasarkan nilai maksimum dan minimum dari matriks keputusan ternormalisasi terbobot.</li>
                        <li><b>Perhitungan Jarak Alternatif ke Solusi Ideal:</b> Setiap alternatif (pakaian) dinilai berdasarkan seberapa dekatnya dengan solusi ideal positif dan seberapa jauhnya dari solusi ideal negatif.</li>
                        <li><b>Perhitungan Nilai Preferensi:</b> Nilai preferensi dihitung untuk menentukan rekomendasi pakaian yang paling sesuai dengan preferensi pengguna.</li>
                        <li><b>Rekomendasi Pakaian:</b> Berdasarkan nilai preferensi, sistem merekomendasikan pakaian yang paling cocok dan stylish sesuai dengan kriteria yang telah ditentukan.</li>
                    </ul>
                </p>
                <p>
                    <b>Manfaat Penggunaan Sistem Rekomendasi Pakaian Dingin yang Stylish:</b>
                    <ul>
                        <li><b>Kepuasan Pengguna:</b> Memberikan pengalaman belanja yang lebih personal dan memuaskan dengan rekomendasi yang disesuaikan.</li>
                        <li><b>Penyederhanaan Proses Pemilihan:</b> Mengurangi kebingungan dan waktu dalam memilih pakaian dengan menyajikan opsi terbaik berdasarkan preferensi individu.</li>
                        <li><b>Stylish dan Fungsional:</b> Menggabungkan gaya dengan kebutuhan cuaca dingin untuk memastikan kenyamanan dan penampilan yang memukau.</li>
                        <li><b>Keputusan Berbasis Data:</b> Menggunakan pendekatan sistematis untuk menghasilkan rekomendasi yang dapat dipercaya dan sesuai.</li>
                    </ul>
                </p>
                <p>
                    Dengan menggunakan Sistem Rekomendasi Pakaian Dingin yang Stylish berbasis Metode TOPSIS, pengguna dapat dengan mudah menemukan pilihan pakaian yang tidak hanya memenuhi kebutuhan fungsional tetapi juga meningkatkan gaya mereka dalam cuaca dingin.
                </p>
            </div>
        </div>
    </div>
</div>

<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
</div>
</div>
@endsection
