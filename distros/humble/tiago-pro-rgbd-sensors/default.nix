
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-updater, rclcpp-components, realsense2-camera, ros2launch }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-rgbd-sensors";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_navigation-release/archive/release/humble/tiago_pro_rgbd_sensors/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "eaef7e8d7f7658ec1bea22209bc83919d56110832bd2c02d2817954f0649275d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-updater rclcpp-components realsense2-camera ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "tiago_pro-specific rgbd sensors launch and config files.";
    license = with lib.licenses; [ asl20 ];
  };
}
