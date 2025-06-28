
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mp2p-icp, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libros-bridge, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-pointcloud-pipeline";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_pointcloud_pipeline/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "2a2b6895fe292b35170f6faf0864078aa4ba5f0279ed3c5972459a9323f85d7c";
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
