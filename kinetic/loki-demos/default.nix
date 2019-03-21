
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, loki-nav, tf2-web-republisher, catkin, rosbridge-server, loki-teleop, loki-bringup }:
buildRosPackage {
  pname = "ros-kinetic-loki-demos";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/loki_robot-release/archive/release/kinetic/loki_demos/0.0.2-0.tar.gz;
    sha256 = "468a0d0094de6d7e2a9b979eeeff6c519bb8eb5e67652c9de83bcb3634e9e2d7";
  };

  propagatedBuildInputs = [ loki-nav tf2-web-republisher loki-teleop rosbridge-server loki-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The loki_demos package'';
    #license = lib.licenses.BSD;
  };
}
