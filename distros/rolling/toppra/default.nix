
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-toppra";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/rolling/toppra/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "2f38bca7895e0b16efd960b3a48fdfa396e0afc6af95435cb9215f62363d20ae";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Time-Optimal Path Parameterization";
    license = with lib.licenses; [ mit ];
  };
}
