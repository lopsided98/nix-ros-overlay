
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-rclcpp, class-loader, message-filters, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-agnocast-wrapper";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_agnocast_wrapper/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "c720efd57351b6339bc1c35a43d56784b7c5c739abd4ee44420c5ed27317d3bc";
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
