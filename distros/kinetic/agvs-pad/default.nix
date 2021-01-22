
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, catkin, diagnostic-msgs, diagnostic-updater, geometry-msgs, robotnik-msgs, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-agvs-pad";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_common-release/archive/release/kinetic/agvs_pad/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "4d5ed9a41e12e21d86ab4613dcdef0b72171d2f38b610e305c579589e8f6df3a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ackermann-msgs diagnostic-msgs diagnostic-updater geometry-msgs robotnik-msgs sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_pad package.Component to control the robot by using a ps3 pad.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
