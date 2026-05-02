
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, muparser, pkg-config, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-parameter-expression";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/parameter_expression-release/archive/release/rolling/parameter_expression/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "4f80a8d478824404f8d48484b28fc8594554193a07b9dae22ea84cd5fbe658b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto pkg-config ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ muparser rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = "Using mathematical expression in ROS 2 parameter";
    license = with lib.licenses; [ asl20 ];
  };
}
