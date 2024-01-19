
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosbridge-library, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mqtt-bridge";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/groove-x/mqtt_bridge-release/archive/release/noetic/mqtt_bridge/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "f35df5101540e03754e6d9a80d5e64babf9e7b4a16aeaa595c6235d82c91b8d0";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.pip python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.msgpack python3Packages.pymongo rosbridge-library rospy std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The mqtt_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
