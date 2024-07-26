
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-iron-perception-pcl";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/iron/perception_pcl/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "76b36d2d98c1ea71314bbef26b3c8c9f4274f9d4b59a2982589e0aaa47d2c72f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pcl-conversions pcl-msgs pcl-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
