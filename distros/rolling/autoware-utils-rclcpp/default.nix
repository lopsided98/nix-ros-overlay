
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-rclcpp";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_rclcpp/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "be5d520cce8ab630b054d922fbb76c62805ab7dbbb06a22113b5f257c3772f16";
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
