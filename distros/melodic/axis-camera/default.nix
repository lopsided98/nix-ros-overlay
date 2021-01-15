
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager-py, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-axis-camera";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/axis_camera-release/archive/release/melodic/axis_camera/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "3aa25a07ebf93c287c17316b496745e4bd617589923075e968f17e15ba8c16bb";
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
