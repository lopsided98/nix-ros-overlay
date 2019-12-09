
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, robotnik-msgs, diagnostic-msgs, geometry-msgs, ackermann-msgs, std-msgs, std-srvs, catkin, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-agvs-pad";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_common-release/archive/release/kinetic/agvs_pad/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "4d5ed9a41e12e21d86ab4613dcdef0b72171d2f38b610e305c579589e8f6df3a";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs robotnik-msgs geometry-msgs diagnostic-msgs ackermann-msgs std-msgs std-srvs diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs robotnik-msgs geometry-msgs diagnostic-msgs ackermann-msgs std-msgs std-srvs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_pad package.Component to control the robot by using a ps3 pad.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
