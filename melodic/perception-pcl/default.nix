
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, catkin, pcl-conversions, pcl-msgs }:
buildRosPackage {
  pname = "ros-melodic-perception-pcl";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/perception_pcl/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "8d884831c2fe71ec25a5b74158ae50b4cd3a9c4a1694bc0271c7fa8eac87685b";
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
