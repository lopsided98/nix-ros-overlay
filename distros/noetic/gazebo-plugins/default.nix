
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, camera-info-manager, catkin, cv-bridge, diagnostic-updater, dynamic-reconfigure, gazebo-dev, gazebo-msgs, gazebo-ros, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, nodelet, polled-camera, rosconsole, roscpp, rosgraph-msgs, rospy, rostest, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, trajectory-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-plugins";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_plugins/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "333a309c3722f3f1fc0a90546aba5c72bead124344e4c31a1e8efd0ea52b806c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ angles camera-info-manager cv-bridge diagnostic-updater dynamic-reconfigure gazebo-dev gazebo-msgs gazebo-ros geometry-msgs image-transport message-runtime nav-msgs nodelet polled-camera rosconsole roscpp rosgraph-msgs rospy sensor-msgs std-msgs std-srvs tf tf2-ros trajectory-msgs urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.";
    license = with lib.licenses; [ "BSD-&-Apache-2.0" ];
  };
}
