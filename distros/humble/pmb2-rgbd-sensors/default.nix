
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-updater, launch-pal, rclcpp-components, rclpy, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-rgbd-sensors";
  version = "4.21.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_rgbd_sensors/4.21.0-1.tar.gz";
    name = "4.21.0-1.tar.gz";
    sha256 = "7bf7367538499ca8d66c5f5e59910d8b7f22eb4eb3dc8213634fa8e975b86f70";
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
