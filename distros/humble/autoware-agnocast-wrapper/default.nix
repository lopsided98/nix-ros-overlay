
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-rclcpp, class-loader, diagnostic-updater, geometry-msgs, glog, launch, launch-ros, message-filters, rclcpp, rclcpp-components, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-agnocast-wrapper";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_agnocast_wrapper/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "bd329224c9ad332e849e5c6e06b710a6713911b377f07a96c414d0cf101f456b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-rclcpp class-loader diagnostic-updater geometry-msgs glog launch launch-ros message-filters rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Wrapper macros for Agnocast (true zero-copy communication library)";
    license = with lib.licenses; [ asl20 ];
  };
}
