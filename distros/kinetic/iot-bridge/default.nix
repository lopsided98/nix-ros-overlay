
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pythonPackages, rospy, rostest, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-iot-bridge";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/iot_bridge-release/archive/release/kinetic/iot_bridge/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "4a4c794d1f100121b7bee42dcc83688aa0b98a3bf3412c8177ebba1d0345bf8b";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs pythonPackages.requests rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iot_bridge provides a bi-directional bridge between ROS and the OpenHAB Home Automation system. This allows a ROS robot to connect to a vast variety of IoT devices such as motion detectors, Z-Wave devices, lighting, door locks, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
