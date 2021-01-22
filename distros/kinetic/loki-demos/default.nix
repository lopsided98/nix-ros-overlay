
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, loki-bringup, loki-nav, loki-teleop, rosbridge-server, tf2-web-republisher }:
buildRosPackage {
  pname = "ros-kinetic-loki-demos";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/loki_robot-release/archive/release/kinetic/loki_demos/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "468a0d0094de6d7e2a9b979eeeff6c519bb8eb5e67652c9de83bcb3634e9e2d7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ loki-bringup loki-nav loki-teleop rosbridge-server tf2-web-republisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The loki_demos package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
