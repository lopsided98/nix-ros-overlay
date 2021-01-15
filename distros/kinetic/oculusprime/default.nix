
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, depthimage-to-laserscan, dwa-local-planner, dynamic-reconfigure, gmapping, map-server, move-base, nodelet, openni2-camera, openni2-launch, pcl-ros, roscpp, rospy, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-oculusprime";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/xaxxontech/oculusprime_ros-release/archive/release/kinetic/oculusprime/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "6daabd727850d25eda5451634f17666297ae5dad0fd15cf67b088a538f4eea9f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl depthimage-to-laserscan dwa-local-planner dynamic-reconfigure gmapping map-server move-base nodelet openni2-camera openni2-launch pcl-ros roscpp rospy std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Oculus Prime ROS Interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
