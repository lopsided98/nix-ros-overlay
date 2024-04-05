
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-lint-auto, as2-core, as2-motion-reference-handlers, as2-msgs, eigen, gbenchmark, geometry-msgs, pluginlib, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-as2-motion-controller";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_controller/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "b1c9fbdd931e8aa8dcf0e19039f886abc410d6befdac8074db132f5400104f24";
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
