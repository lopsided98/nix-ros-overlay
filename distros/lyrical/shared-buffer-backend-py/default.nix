
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-buffer, rosidl-buffer-py, rpyutils, sensor-msgs, shared-buffer }:
buildRosPackage {
  pname = "ros-lyrical-shared-buffer-backend-py";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/lyrical/shared_buffer_backend_py/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "4fc3953e4c10d12870b60389824ddca671ddecf6e93b29c016ede37342ae8391";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.numpy python3Packages.pytest sensor-msgs ];
  propagatedBuildInputs = [ python3 python3Packages.pybind11 rosidl-buffer rosidl-buffer-py rpyutils shared-buffer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python zero-copy access to shared-memory rosidl buffers.";
    license = with lib.licenses; [ asl20 ];
  };
}
