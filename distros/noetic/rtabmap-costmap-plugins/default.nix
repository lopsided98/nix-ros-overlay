
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, genmsg, message-generation, pcl, pcl-conversions, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-costmap-plugins";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_costmap_plugins/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "f61924a7530d7c634eb060419a3ee6c75bc2cbd7652ec85cc7cb835091147057";
  };

  buildType = "catkin";
  buildInputs = [ catkin dynamic-reconfigure genmsg message-generation pcl ];
  propagatedBuildInputs = [ costmap-2d pcl-conversions roscpp ];
  nativeBuildInputs = [ catkin genmsg ];

  meta = {
    description = "RTAB-Map's costmap_2d plugins";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
