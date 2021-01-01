
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, sensor-msgs, teleop-twist-joy, teleop-twist-keyboard, volta-msgs }:
buildRosPackage {
  pname = "ros-melodic-volta-teleoperator";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_teleoperator/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "74982ce284e82aa30fb6ea242e6df23cf57ea4111b36c435d0d4ae3641f10219";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs sensor-msgs teleop-twist-joy teleop-twist-keyboard volta-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_teleoperator package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
