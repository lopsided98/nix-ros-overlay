
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-toppra";
  version = "0.6.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/lyrical/toppra/0.6.7-3.tar.gz";
    name = "0.6.7-3.tar.gz";
    sha256 = "3253f14d7a924f5716a4917ea19c8dda550ddadd28bc006fd706bc598fe1a530";
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
