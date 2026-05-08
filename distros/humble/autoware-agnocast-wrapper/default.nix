
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-rclcpp, class-loader, message-filters, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-agnocast-wrapper";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_agnocast_wrapper/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "2e9bb2b13fd2b0b0bf0f7c96cf47718d3d2e3648145611fa9a3c4a1d0b739000";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-rclcpp class-loader message-filters rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Wrapper macros for Agnocast (true zero-copy communication library)";
    license = with lib.licenses; [ asl20 ];
  };
}
