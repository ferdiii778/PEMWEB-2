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
                <h5 class="modal-title" id="tentangModalLabel">Tentang Aplikasi Metode TOPSIS</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>
                    Dalam lingkungan bisnis yang kompetitif, penilaian kinerja karyawan merupakan komponen krusial dalam manajemen sumber daya manusia. Penilaian yang akurat dan adil dapat membantu perusahaan mengidentifikasi karyawan berprestasi, merancang program pengembangan, dan meningkatkan produktivitas secara keseluruhan. Salah satu metode yang dapat digunakan untuk penilaian kinerja karyawan adalah <b>Metode TOPSIS (Technique for Order Preference by Similarity to Ideal Solution)</b>.
                </p>
                <p>
                    Metode TOPSIS adalah salah satu teknik pengambilan keputusan multi-kriteria yang membantu dalam menilai dan menentukan peringkat alternatif berdasarkan beberapa kriteria. Prinsip dasar TOPSIS adalah bahwa solusi terbaik adalah yang paling dekat dengan solusi ideal positif (optimal) dan paling jauh dari solusi ideal negatif (paling buruk).
                </p>
                <p>
                    <b>Tahapan Aplikasi TOPSIS:</b>
                    <ul>
                        <li><b>Identifikasi Kriteria Penilaian:</b> Kriteria yang umum digunakan mencakup Kedisiplinan, Keterampilan, Sikap, Produktivitas, dan Kualitas Pekerjaan. Masing-masing kriteria dapat memiliki sub-kriteria lebih lanjut seperti Keterlambatan, Pengalaman Kerja, Kerjasama, Output, dan Kualitas Produk.</li>
                        <li><b>Penentuan Bobot Kriteria:</b> Setiap kriteria diberi bobot berdasarkan tingkat kepentingannya. Misalnya, Kedisiplinan (30%), Keterampilan (25%), Sikap (20%), Produktivitas (25%), dan Kualitas Pekerjaan (30%).</li>
                        <li><b>Normalisasi Matriks Keputusan:</b> Data kinerja karyawan dinormalisasi untuk menghilangkan perbedaan skala antar kriteria.</li>
                        <li><b>Pembentukan Matriks Keputusan Ternormalisasi Terbobot:</b> Matriks keputusan dinormalisasi dikalikan dengan bobot masing-masing kriteria untuk mendapatkan matriks keputusan ternormalisasi terbobot.</li>
                        <li><b>Penentuan Solusi Ideal Positif dan Negatif:</b> Solusi ideal positif (A+) dan solusi ideal negatif (A-) ditentukan berdasarkan nilai maksimum dan minimum dari matriks keputusan ternormalisasi terbobot.</li>
                        <li><b>Perhitungan Jarak Setiap Alternatif ke Solusi Ideal Positif dan Negatif:</b> Jarak setiap alternatif (karyawan) dihitung terhadap solusi ideal positif dan negatif.</li>
                        <li><b>Perhitungan Nilai Preferensi:</b> Nilai preferensi dihitung berdasarkan rasio jarak ke solusi ideal negatif terhadap total jarak ke solusi ideal positif dan negatif.</li>
                        <li><b>Peringkat Karyawan:</b> Karyawan diberi peringkat berdasarkan nilai preferensi. Karyawan dengan nilai preferensi tertinggi dianggap memiliki kinerja terbaik.</li>
                    </ul>
                </p>
                <p>
                 <b>Keuntungan Menggunakan Aplikasi TOPSIS:</b>
                 <ul>
                    <li><b>Objektivitas:</b> Mengurangi subjektivitas dalam penilaian kinerja dengan menggunakan pendekatan berbasis data.</li>
                    <li><b>Fleksibilitas:</b> Dapat digunakan dengan berbagai jenis kriteria dan bobot yang dapat disesuaikan dengan kebutuhan organisasi.</li>
                    <li><b>Efisiensi:</b> Mempercepat proses penilaian kinerja dengan pendekatan sistematis dan terstruktur.</li>
                    <li><b>Keputusan Berdasarkan Data:</b> Membantu manajemen dalam membuat keputusan yang lebih informasional dan berbasis bukti.</li>
                </ul>
            </p>
            <p>
                Aplikasi metode TOPSIS dalam penilaian kinerja karyawan adalah alat yang efektif untuk membantu perusahaan dalam menilai kinerja secara objektif dan adil. Dengan menggabungkan berbagai kriteria penilaian dan bobot yang sesuai, metode ini memberikan gambaran yang jelas tentang performa karyawan, memungkinkan manajemen untuk mengambil keputusan yang lebih baik dan tepat sasaran dalam pengelolaan sumber daya manusia.
            </p>
        </div>
    </div>

</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
</div>
</div>
@endsection
