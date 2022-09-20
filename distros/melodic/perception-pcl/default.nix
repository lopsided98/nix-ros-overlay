
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-melodic-perception-pcl";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/perception_pcl/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "2599983e343b30b490122b261c020ce74a17328ab748cbe840007753e9579608";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pcl-conversions pcl-msgs pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
