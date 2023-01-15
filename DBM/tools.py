# Copyright 2023 Cristian Grosu
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import numpy as np

def get_inv_proj_error(i,j, Xnd):
    error = 0
    # getting the neighbours of the given point
    neighbours_nd = []
    current_point_nd = Xnd[i,j]
    
    if i - 1 >= 0:
        neighbours_nd.append(Xnd[i-1,j])
    if i + 1 < Xnd.shape[0]:
        neighbours_nd.append(Xnd[i+1,j])
    if j - 1 >= 0:
        neighbours_nd.append(Xnd[i,j-1])
    if j + 1 < Xnd.shape[1]:
        neighbours_nd.append(Xnd[i,j+1])
    
    # calculating the error
    for neighbour_nd in neighbours_nd:
        error += np.linalg.norm(current_point_nd - neighbour_nd)
    
    error /= len(neighbours_nd)
    return error

def get_proj_error(index, indices_2d, indices_nd, labels):
    K = 8
    
    if index > len(indices_2d) - K:
        neighbours_2d = indices_2d[-K-1:]
        neighbours_nd = indices_nd[-K-1:]
    
    if index <= len(indices_2d) - K:
        neighbours_2d = indices_2d[index:index+K+1]
        neighbours_nd = indices_nd[index:index+K+1]
    
    # calculating the trustworthiness
    trustworthiness = 1 - (np.sum([1 for i in range(K) if labels[neighbours_nd[i]] == labels[neighbours_2d[i]]]) - 1) / (K - 1)
    continuity = 1    
    
    error = trustworthiness * continuity 
    return error
