
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-humble-perception-pcl";
  version = "2.4.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/humble/perception_pcl/2.4.5-2.tar.gz";
    name = "2.4.5-2.tar.gz";
    sha256 = "887d5e933481d4b4043afdd392a3f7dbf805f265c940de60037a3b1db3d71ea9";
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
