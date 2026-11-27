
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-buffer, rosidl-buffer-py, rpyutils, sensor-msgs, shmem-buffer }:
buildRosPackage {
  pname = "ros-rolling-shmem-buffer-backend-py";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/rolling/shmem_buffer_backend_py/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8d00ce315b7c9a9c8c55df1a43d6febd32a5f96a0b754a284836887ee371c0ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.numpy python3Packages.pytest sensor-msgs ];
  propagatedBuildInputs = [ python3 python3Packages.pybind11 rosidl-buffer rosidl-buffer-py rpyutils shmem-buffer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python zero-copy access to shared-memory rosidl buffers.";
    license = with lib.licenses; [ asl20 ];
  };
}
