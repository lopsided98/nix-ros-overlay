
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mp2p-icp, mrpt-gui, mrpt-libros-bridge, mrpt-maps, mrpt-obs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-pointcloud-pipeline";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_pointcloud_pipeline/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "e3c948a5592f0dca7f34a7f5580bc3aef49bbc433316922ec3e785fa84206029";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mp2p-icp mrpt-gui mrpt-libros-bridge mrpt-maps mrpt-obs nav-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Maintains a local obstacle map from recent sensor readings, including optional point cloud pipeline filtering or processing.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
