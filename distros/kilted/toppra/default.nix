
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-toppra";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/kilted/toppra/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "cc4da91e3e808aab731de5d463be95a682dfb4134fe682d620519b66810152cb";
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
