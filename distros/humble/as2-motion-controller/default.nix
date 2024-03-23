
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-lint-auto, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, gbenchmark, geometry-msgs, pluginlib, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-as2-motion-controller";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_controller/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "2d20b8d998dbfd40c8d2d22dc9bc0a78107dc4603bb5f0d886da20aaed5d8ab4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ as2-core as2-motion-reference-handlers as2-msgs eigen gbenchmark geometry-msgs pluginlib rclcpp yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 Controller Package";
    license = with lib.licenses; [ bsd3 ];
  };
}
