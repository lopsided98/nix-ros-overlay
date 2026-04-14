
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-toppra";
  version = "0.6.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/rolling/toppra/0.6.6-2.tar.gz";
    name = "0.6.6-2.tar.gz";
    sha256 = "fc0a7d24f7056c7a4017ac3eca102dd3b9b917ab69a694bc3dee933f3e6bdb35";
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
