
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-rolling-ecl-eigen";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_eigen/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "1bbb0623b6e9763602e6fc0dccbf7d1b83512249373bf01ba26178b35400a0c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
