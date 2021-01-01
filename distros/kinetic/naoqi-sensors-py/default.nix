
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-info-manager, camera-info-manager-py, catkin, dynamic-reconfigure, naoqi-driver-py, octomap, octomap-msgs, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-sensors-py";
  version = "0.5.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_sensors_py/0.5.5-0.tar.gz";
    name = "0.5.5-0.tar.gz";
    sha256 = "7aaa45e944e3dc066d942c9b66e961a3282691e0c83f53c9d5a4709edfaca1a0";
  };

  buildType = "catkin";
  buildInputs = [ octomap-msgs ];
  propagatedBuildInputs = [ boost camera-info-manager camera-info-manager-py dynamic-reconfigure naoqi-driver-py octomap rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for miscellaneous sensors on NAO.
    Python bindings for camera, sonar and octomap
    C++: bindings for camera only (requires NAOqi to build)'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
