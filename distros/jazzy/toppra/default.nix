
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-toppra";
  version = "0.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/jazzy/toppra/0.6.7-1.tar.gz";
    name = "0.6.7-1.tar.gz";
    sha256 = "afbe3ea6eec448bdd310bf4c2f0d6d3406e328c6970dc80d21e4edd135aad54c";
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
