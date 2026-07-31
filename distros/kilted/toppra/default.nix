
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-toppra";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/kilted/toppra/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "44e09cd1bb9300b3b1f91f7cb0c20b2ac177cc3ee8e5fefcfb4ba23f5d7a945c";
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
