
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, catkin, pcl-conversions, pcl-msgs }:
buildRosPackage {
  pname = "ros-lunar-perception-pcl";
  version = "1.5.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/perception_pcl-release/archive/release/lunar/perception_pcl/1.5.4-0.tar.gz;
    sha256 = "24ff27235147e3346e905a32355a70bf67388e68701cbeca5e238292763d5790";
  };

  propagatedBuildInputs = [ pcl-conversions pcl-msgs pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    #license = lib.licenses.BSD;
  };
}
