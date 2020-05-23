
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-noetic-perception-pcl";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/noetic/perception_pcl/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "9dcb27c05a4fd4b8ac3c8faf2650ca16523ec438dd207a50421a9cdb69e62911";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl-conversions pcl-msgs pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
