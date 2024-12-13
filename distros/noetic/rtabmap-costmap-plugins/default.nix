
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, genmsg, message-generation, pcl, pcl-conversions, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-costmap-plugins";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_costmap_plugins/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "4b0b2193f435bb09154649cbce0453ab46432edd41a86494bd473f4f91a27182";
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
