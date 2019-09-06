
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rosbridge-library, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-mqtt-bridge";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/groove-x/mqtt_bridge-release/archive/release/kinetic/mqtt_bridge/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "46a3a798c11f7784b46d7d6c3e950603c31b0ad4ed501ed42104e433f2cfd19c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ std-msgs rosbridge-library rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mqtt_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
