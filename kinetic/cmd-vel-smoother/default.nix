
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cmd-vel-smoother";
  version = "0.1.14";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_control-release/archive/release/kinetic/cmd_vel_smoother/0.1.14-0.tar.gz;
    sha256 = "c1266ab3393f0a885eab2ada697909ecc6f8797435d47d7bd73c70cffb60d1f5";
  };

  buildInputs = [ roscpp geometry-msgs dynamic-reconfigure ];
  propagatedBuildInputs = [ roscpp geometry-msgs dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cmd_vel_smoother package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
