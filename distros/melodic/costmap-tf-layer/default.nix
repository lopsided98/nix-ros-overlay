
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, pluginlib, roscpp, roslint, rospy, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-tf-layer";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/igorbanfi/costmap_tf_layer-release/archive/release/melodic/costmap_tf_layer/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "7b82e925dfd3d74c26f302a7fc3c213e33078aa9b670f7a68f6627d105f14c0c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure pluginlib roscpp rospy tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-package that implements a costmap layer populated by observing tf frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
