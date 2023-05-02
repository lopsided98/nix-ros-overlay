
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, gbenchmark, geometry-msgs, libyamlcpp, pluginlib, rclcpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-motion-controller";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_controller/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a27a1360938560e9e7ce20f91fbb1f6db6062d07a9633ad2d4898c4e9599c2a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-core as2-motion-reference-handlers as2-msgs eigen gbenchmark geometry-msgs libyamlcpp pluginlib rclcpp tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 Controller Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
