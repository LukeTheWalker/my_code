#ifndef UTILS_HPP
#define UTILS_HPP

#include <cstddef>
#include <cstdio>
#include <mpi.h>
#include <nccl.h>
#include <cstdint>

bool read_matrix_from_file(const char * filename, double ** matrix_out, size_t * num_rows_out, size_t * num_cols_out);
bool write_matrix_to_file(const char * filename, const double * matrix, size_t num_rows, size_t num_cols);
void print_matrix(const double * matrix, size_t num_rows, size_t num_cols, FILE * file = stdout);
void cuda_err_check (cudaError_t err, const char *file, int line);
void nccl_err_check (ncclResult_t err, const char *file, int line);
void mpi_err_check (int err, const char *file, int line);
uint64_t getHostHash(const char *string);
void getHostName(char *hostname, int maxlen);

#endif // UTILS_HPP