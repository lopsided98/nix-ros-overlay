
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-behavior, as2-core, as2-motion-reference-handlers, as2-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-motion";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_motion/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "eb9e2390fcb9630de06d40fe01ba7599216a08925ccf56b1f8d34e0e97d2e863";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-behavior as2-core as2-motion-reference-handlers as2-msgs pluginlib rclcpp rclcpp-action rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 Movement Behaviors Behaviors Meta Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
