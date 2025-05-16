
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-rclcpp";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_rclcpp/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "6cb0445666a508de09562826cb7b10a153b0e87a1a105b715c05b3b53fc9d304";
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
