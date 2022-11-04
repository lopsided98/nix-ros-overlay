
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, sensor-msgs, teleop-twist-joy, teleop-twist-keyboard, volta-msgs }:
buildRosPackage {
  pname = "ros-melodic-volta-teleoperator";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_teleoperator/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c78de0dec74b640a9643cae3f908e3e198fe1884e1d0fc56ab27802596fd4353";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs sensor-msgs teleop-twist-joy teleop-twist-keyboard volta-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_teleoperator package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
