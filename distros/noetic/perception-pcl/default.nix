
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-noetic-perception-pcl";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/noetic/perception_pcl/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "e13459ad7a6a9e74f1e06c597b91fa4e93316b5e66c95e3d7bd22a842cebcceb";
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
