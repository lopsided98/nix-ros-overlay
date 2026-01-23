
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, muparser, pkg-config, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-parameter-expression";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/parameter_expression-release/archive/release/jazzy/parameter_expression/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "3d75f87fc1275131724eb7e49073d9aa28a222ed0e21170f21052570f939dc3c";
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
