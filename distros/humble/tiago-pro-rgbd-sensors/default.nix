
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-updater, rclcpp-components, realsense2-camera, ros2launch }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-rgbd-sensors";
  version = "2.13.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_navigation-release/archive/release/humble/tiago_pro_rgbd_sensors/2.13.3-1.tar.gz";
    name = "2.13.3-1.tar.gz";
    sha256 = "56b2eca78aa9b0054f35ac27186a79bb477b484b17968f846ce33f7e36bfd2af";
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
