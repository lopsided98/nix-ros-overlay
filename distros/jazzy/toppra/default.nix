
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-toppra";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/jazzy/toppra/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "f551b2b942c1c90fac86ee1d3037e7ad1678e2e120e964a53b2c639a0ad2e15d";
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
