
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, dynamic-reconfigure, map-server, std-msgs, catkin, gmapping, openni2-launch, nodelet, roscpp, visualization-msgs, move-base, rospy, amcl, openni2-camera, dwa-local-planner, depthimage-to-laserscan }:
buildRosPackage {
  pname = "ros-kinetic-oculusprime";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/xaxxontech/oculusprime_ros-release/archive/release/kinetic/oculusprime/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "6daabd727850d25eda5451634f17666297ae5dad0fd15cf67b088a538f4eea9f";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros dynamic-reconfigure std-msgs roscpp nodelet visualization-msgs rospy ];
  propagatedBuildInputs = [ pcl-ros dynamic-reconfigure map-server std-msgs gmapping openni2-launch nodelet roscpp visualization-msgs move-base rospy amcl openni2-camera dwa-local-planner depthimage-to-laserscan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Oculus Prime ROS Interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
