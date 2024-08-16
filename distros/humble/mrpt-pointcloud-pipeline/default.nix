
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mp2p-icp, mrpt2, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-mrpt-pointcloud-pipeline";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/humble/mrpt_pointcloud_pipeline/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6a3563957a3f2547c3c4033f2f183435ee269a79f36763299d04743bf0d0fe35";
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
