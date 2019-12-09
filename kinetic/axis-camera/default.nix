
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, dynamic-reconfigure, tf, catkin, camera-info-manager-py, rospy, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-axis-camera";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/axis_camera-release/archive/release/kinetic/axis_camera/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "ae6f8e91ae2ddeacc968cef472235f31a371e4a1f2a2828cd612df1713de3d8e";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure tf camera-info-manager-py rospy message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure tf camera-info-manager-py rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python ROS drivers for accessing an Axis camera's MJPG
    stream. Also provides control for PTZ cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
