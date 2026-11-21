
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-buffer, rosidl-buffer-py, rpyutils, sensor-msgs, shared-buffer }:
buildRosPackage {
  pname = "ros-rolling-shared-buffer-backend-py";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/rolling/shared_buffer_backend_py/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "7ea2a3666be658a6a803aa3bd8e40a60c0f5c668856733dff0a1e089a0994ee6";
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
