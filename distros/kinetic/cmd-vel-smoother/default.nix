
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cmd-vel-smoother";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/cmd_vel_smoother/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "c1266ab3393f0a885eab2ada697909ecc6f8797435d47d7bd73c70cffb60d1f5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cmd_vel_smoother package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
