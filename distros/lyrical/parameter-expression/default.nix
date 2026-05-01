
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, muparser, pkg-config, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-parameter-expression";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/parameter_expression-release/archive/release/lyrical/parameter_expression/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "e956b31f2334b15ee4da1bca53e1e6014337b9bd56048ce5fde5851f7cb042ed";
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
