
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, rclcpp-components, rclpy, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-rgbd-sensors";
  version = "4.17.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_rgbd_sensors/4.17.0-1.tar.gz";
    name = "4.17.0-1.tar.gz";
    sha256 = "27f455f6e8a77565951efde285915435e9f707a4d311732d8e6061e115d6b763";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal rclcpp-components rclpy ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "pmb2-specific RGBD sensors module and params files.";
    license = with lib.licenses; [ asl20 ];
  };
}
