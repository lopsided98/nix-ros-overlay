
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, sensor-msgs, teleop-twist-joy, teleop-twist-keyboard, volta-msgs }:
buildRosPackage {
  pname = "ros-noetic-volta-teleoperator";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/noetic/volta_teleoperator/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "a3714334e6d6694ea0af0a5c4d41adb229a27be19b38579f52fa6703228e6110";
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
