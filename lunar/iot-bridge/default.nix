
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest, rostopic, rospy, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-lunar-iot-bridge";
  version = "0.9.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/iot_bridge-release/archive/release/lunar/iot_bridge/0.9.0-0.tar.gz;
    sha256 = "9e293064bf23b991adadca2795c3bcd32e14faa210bb45e2852d6337d2cac1de";
  };

  buildInputs = [ diagnostic-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs pythonPackages.requests rostopic rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iot_bridge provides a bi-directional bridge between ROS and the OpenHAB Home Automation system. This allows a ROS robot to connect to a vast variety of IoT devices such as motion detectors, Z-Wave devices, lighting, door locks, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
