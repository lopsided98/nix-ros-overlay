
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-eloquent-ecl-eigen";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_eigen/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "1eb3a284654d9d60f27f09090535a64d8cb5a071f215d50346e4b3d0e8396ab0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
