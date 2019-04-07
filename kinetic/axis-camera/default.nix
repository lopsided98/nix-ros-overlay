
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, dynamic-reconfigure, rospy, tf, camera-info-manager-py, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-axis-camera";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/axis_camera-release/archive/release/kinetic/axis_camera/0.3.0-0.tar.gz;
    sha256 = "ae6f8e91ae2ddeacc968cef472235f31a371e4a1f2a2828cd612df1713de3d8e";
  };

  buildInputs = [ message-generation dynamic-reconfigure rospy sensor-msgs tf camera-info-manager-py geometry-msgs ];
  propagatedBuildInputs = [ message-runtime dynamic-reconfigure rospy sensor-msgs tf camera-info-manager-py geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python ROS drivers for accessing an Axis camera's MJPG
    stream. Also provides control for PTZ cameras.'';
    #license = lib.licenses.BSD;
  };
}
