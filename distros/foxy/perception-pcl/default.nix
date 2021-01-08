
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pcl-conversions, pcl-msgs }:
buildRosPackage {
  pname = "ros-foxy-perception-pcl";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/foxy/perception_pcl/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "1bcca1f2d26e0c13fa1ffd129c69804c2b0ab391679b7b6411b4de4e40d25002";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ pcl-conversions pcl-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
