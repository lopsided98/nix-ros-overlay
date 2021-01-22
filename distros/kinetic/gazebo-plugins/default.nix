
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, camera-info-manager, catkin, cv-bridge, diagnostic-updater, dynamic-reconfigure, gazebo-dev, gazebo-msgs, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, nodelet, polled-camera, rosconsole, roscpp, rosgraph-msgs, rospy, rostest, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-plugins";
  version = "2.5.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_plugins/2.5.20-1.tar.gz";
    name = "2.5.20-1.tar.gz";
    sha256 = "2258b11e82967e88ffb391e304725015cdb2eef2be675c20c097df40f3dad040";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ angles camera-info-manager cv-bridge diagnostic-updater dynamic-reconfigure gazebo-dev gazebo-msgs geometry-msgs image-transport message-runtime nav-msgs nodelet polled-camera rosconsole roscpp rosgraph-msgs rospy sensor-msgs std-msgs std-srvs tf tf2-ros trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
