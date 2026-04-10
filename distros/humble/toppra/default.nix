
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-toppra";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/humble/toppra/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "19f34f035c7c09be8acc8a049498ee9596deea359e932150c503d0d59680de4c";
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
