
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mp2p-icp, mrpt2, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-mrpt-pointcloud-pipeline";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/rolling/mrpt_pointcloud_pipeline/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "30a0f6f7faa61488d545c86301e516fe5faaefa2a2bf02b8f1d2dabebfd8f96a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mp2p-icp mrpt2 nav-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Maintains a local obstacle map from recent sensor readings, including optional point cloud pipeline filtering or processing.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
