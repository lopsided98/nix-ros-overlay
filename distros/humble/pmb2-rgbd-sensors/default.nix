
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-updater, launch-pal, rclcpp-components, rclpy, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-rgbd-sensors";
  version = "4.24.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pmb2_navigation-release/archive/release/humble/pmb2_rgbd_sensors/4.24.1-1.tar.gz";
    name = "4.24.1-1.tar.gz";
    sha256 = "6389ec97460667d3a1c9b838a37b5a74421d0e03d5b344b60ab834306bb63abf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-updater launch-pal rclcpp-components rclpy ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "pmb2-specific RGBD sensors module and params files.";
    license = with lib.licenses; [ asl20 ];
  };
}
