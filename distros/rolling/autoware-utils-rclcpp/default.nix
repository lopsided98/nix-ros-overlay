
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-rclcpp";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_rclcpp/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "4b8bec37ce0f37cac1032ab41d955e18105ca4f29fa2abe50942da626887135d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common std-msgs ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_rclcpp package";
    license = with lib.licenses; [ asl20 ];
  };
}
