
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-toppra";
  version = "0.6.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/rolling/toppra/0.6.7-2.tar.gz";
    name = "0.6.7-2.tar.gz";
    sha256 = "2cfcd5443b796f6f2867ab9c93cde402bf07a08cad9a19f5d576d407f1da26e3";
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
