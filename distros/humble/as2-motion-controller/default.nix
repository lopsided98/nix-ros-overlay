
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-lint-auto, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, gbenchmark, geometry-msgs, pluginlib, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-as2-motion-controller";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_controller/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "311d7e5b598b8b90a77a74d42ed7be2ba6d1e95523ac099263b7c1c2ce83b5e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ as2-core as2-motion-reference-handlers as2-msgs eigen gbenchmark geometry-msgs pluginlib rclcpp yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 Controller Package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
