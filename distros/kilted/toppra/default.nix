
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-toppra";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/kilted/toppra/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "66ad0c92d47b29f0acac1d73a08c75e23dd871bc3c3ebe02124bf7a2d86e914f";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Time-Optimal Path Parameterization";
    license = with lib.licenses; [ mit ];
  };
}
