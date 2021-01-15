
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-library, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mqtt-bridge";
  version = "0.1.7-r2";

  src = fetchurl {
    url = "https://github.com/groove-x/mqtt_bridge-release/archive/release/kinetic/mqtt_bridge/0.1.7-2.tar.gz";
    name = "0.1.7-2.tar.gz";
    sha256 = "fbadcaa377c7fa104eef246bfe9323be2109b74583b80ae49b28c2f09e127217";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbridge-library rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mqtt_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
