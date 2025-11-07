
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-updater, launch-pal, rclcpp-components, rclpy, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-rgbd-sensors";
  version = "4.18.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_rgbd_sensors/4.18.2-1.tar.gz";
    name = "4.18.2-1.tar.gz";
    sha256 = "06c351365cbeb64e3b2b7ff0ecb32ea0381212252397fd92c04e4f4b66e00504";
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
