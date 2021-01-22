
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-melodic-perception-pcl";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/perception_pcl/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "e9dcc8b15f57efae94a5475f931f2a945c6f78a6ae455be270e0a5e9ff69eb0c";
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
