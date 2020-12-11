
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, vesc-ackermann, vesc-driver, vesc-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/melodic/vesc/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2177ac252efaf949e3c6981121e7d6b200af51c04b3f91a07828605df359e2d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ vesc-ackermann vesc-driver vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for ROS interface to the Vedder VESC open source motor controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
