
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-rolling-perception-pcl";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/rolling/perception_pcl/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "0e01f7fef4728bb0b777d83d1c56459550ff509585a91c4142aa811ec669d967";
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
