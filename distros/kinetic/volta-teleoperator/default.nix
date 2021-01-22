
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, sensor-msgs, teleop-twist-joy, teleop-twist-keyboard, volta-msgs }:
buildRosPackage {
  pname = "ros-kinetic-volta-teleoperator";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_teleoperator/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9eab38801278a76d6d08c853c2056d7a1a1b77536329b265946c0da94dcea70c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs sensor-msgs teleop-twist-joy teleop-twist-keyboard volta-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_teleoperator package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
