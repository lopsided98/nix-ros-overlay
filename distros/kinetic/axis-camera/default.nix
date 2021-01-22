
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager-py, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-axis-camera";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/axis_camera-release/archive/release/kinetic/axis_camera/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "7076db72263c566ce4b354ba3ce1b1d2bf5a8d72b5b2b7b264ad1dc2ac0fc938";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ camera-info-manager-py dynamic-reconfigure geometry-msgs message-runtime rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python ROS drivers for accessing an Axis camera's MJPG
    stream. Also provides control for PTZ cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
