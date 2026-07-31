
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-toppra";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/humble/toppra/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "e1e9d902e1cbd951f0123020456a8e25716fedc1b924793b18519b3b17f93831";
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
