
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-toppra";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/rolling/toppra/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "148cf2980c7be5caca4dcc9d7f7738826735fc4645709f44041f9265685f813c";
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
