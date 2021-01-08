
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-perception-pcl";
  version = "1.4.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/kinetic/perception_pcl/1.4.4-0.tar.gz";
    name = "1.4.4-0.tar.gz";
    sha256 = "dac70ef69f32a1bc70475ce8a2e2f312558d3369ec6687812d661ba83d23fb07";
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
