
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-toppra";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/humble/toppra/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "51f6a370da371430cb043f9a2f191021c19a6ae30489fad7bb8e9b6f6d3ae953";
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
