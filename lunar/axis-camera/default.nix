
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, dynamic-reconfigure, rospy, tf, camera-info-manager-py, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-axis-camera";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/axis_camera-release/archive/release/lunar/axis_camera/0.3.0-0.tar.gz;
    sha256 = "25ddd234e777c466adc7685c7df9b76b71d22e00e7a048d08a12eea43a6412ce";
  };

  buildInputs = [ sensor-msgs message-generation rospy dynamic-reconfigure tf camera-info-manager-py geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime rospy dynamic-reconfigure tf camera-info-manager-py geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python ROS drivers for accessing an Axis camera's MJPG
    stream. Also provides control for PTZ cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
