
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-library, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mqtt-bridge";
  version = "0.1.7-r7";

  src = fetchurl {
    url = "https://github.com/groove-x/mqtt_bridge-release/archive/release/melodic/mqtt_bridge/0.1.7-7.tar.gz";
    name = "0.1.7-7.tar.gz";
    sha256 = "9634feb4b2d21c826199396342529bccf22aaa9c7c262446f9a03e6165c920b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbridge-library rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mqtt_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
