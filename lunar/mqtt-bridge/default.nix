
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rosbridge-library, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-mqtt-bridge";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/groove-x/mqtt_bridge-release/archive/release/lunar/mqtt_bridge/0.1.6-0.tar.gz;
    sha256 = "8a1a43b83d887d1294573bc0fc1ed1ecfb16ced8b6f04ed3efadb241de123388";
  };

  propagatedBuildInputs = [ std-msgs rosbridge-library rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mqtt_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
