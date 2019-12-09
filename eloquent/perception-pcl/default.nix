
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-conversions, pcl-msgs, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-perception-pcl";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/eloquent/perception_pcl/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "45e6688cd91ff53a8341e7997a43a6f12936bd0de4a000ffaa63e14c199a40e5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ pcl-msgs pcl-conversions ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
