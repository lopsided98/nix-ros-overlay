
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, catkin, pcl-conversions, pcl-msgs }:
buildRosPackage {
  pname = "ros-melodic-perception-pcl";
  version = "1.6.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/perception_pcl/1.6.2-0.tar.gz;
    sha256 = "05249c482602e692fdbcc13a26ed22ac2b0de79d93c08661ec8bcd0b87b6f3ad";
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
