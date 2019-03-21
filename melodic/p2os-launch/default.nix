
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, p2os-teleop, p2os-driver, p2os-urdf, catkin, p2os-msgs }:
buildRosPackage {
  pname = "ros-melodic-p2os-launch";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_launch/2.2.0-0.tar.gz;
    sha256 = "466e247e9a9c302f0070b881742bef7ff9a0de402ff403691035d91d14c5bff1";
  };

  propagatedBuildInputs = [ p2os-teleop p2os-urdf p2os-driver p2os-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and config files designed for use with the p2os stack.'';
    #license = lib.licenses.BSD;
  };
}
