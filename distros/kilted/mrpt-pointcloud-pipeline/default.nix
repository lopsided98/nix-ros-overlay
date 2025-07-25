
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mp2p-icp, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libros-bridge, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-pointcloud-pipeline";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_pointcloud_pipeline/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "a42059c4621d08929c58d50cfb364beda4d5d6568fb26796ddec997a2968e562";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mp2p-icp mrpt-libgui mrpt-libmaps mrpt-libobs mrpt-libros-bridge nav-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Maintains a local obstacle map from recent sensor readings, including optional point cloud pipeline filtering or processing.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
