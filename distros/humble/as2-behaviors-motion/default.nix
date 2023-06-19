
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-behavior, as2-core, as2-motion-reference-handlers, as2-msgs, pluginlib, rclcpp, rclcpp-action, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-motion";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_motion/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "eb87213c3b6c9f80470806470cd0e8aca4e4ff53624d0854597ac4d405dcf2c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-behavior as2-core as2-motion-reference-handlers as2-msgs pluginlib rclcpp rclcpp-action std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 Movement Behaviors Behaviors Meta Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
