
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-filter-madgwick, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, tf2-ros, velodyne }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-examples";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_examples/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "92e6a77581fad62411256c2134f25338e9b85b8ad5d6dd3c6e5f29445e691e76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-filter-madgwick rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz tf2-ros velodyne ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's example launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
