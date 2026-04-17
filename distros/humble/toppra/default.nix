
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-toppra";
  version = "0.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/humble/toppra/0.6.7-1.tar.gz";
    name = "0.6.7-1.tar.gz";
    sha256 = "1ffb8223d507666dfd18d432db5301d5a8da713c9950265626129ec404407e36";
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
