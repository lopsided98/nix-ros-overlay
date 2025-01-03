
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, autoware-cmake, boost, builtin-interfaces, rclcpp, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b0c8c9508f79bd494a84b10c882d6762f4f9cf0dca9542233036cbf22cc2efc3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ boost builtin-interfaces rclcpp unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
