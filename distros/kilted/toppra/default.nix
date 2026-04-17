
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-toppra";
  version = "0.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/kilted/toppra/0.6.7-1.tar.gz";
    name = "0.6.7-1.tar.gz";
    sha256 = "42da4ef39df13b822b43ada1622be495ab3c0b9ab2508aecd3ab283eff38ea26";
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
