
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pcl-conversions, pcl-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-humble-perception-pcl";
  version = "2.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/humble/perception_pcl/2.4.0-5.tar.gz";
    name = "2.4.0-5.tar.gz";
    sha256 = "e85038742b715f25dcedff5e4215220f21458d4cb058c7dcd3d48f365b03fb01";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pcl-conversions pcl-msgs pcl-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
