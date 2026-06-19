
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, depthai, depthai-bridge, generate-parameter-library, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-raph-oak";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_robot-release/archive/release/jazzy/raph_oak/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "5c40755c21cac154ef88df08e5c793beb67b95110e2a24cbbdfe6007530232fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ depthai depthai-bridge generate-parameter-library rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Oak camera pipeline for Rapha Rover";
    license = with lib.licenses; [ mit ];
  };
}
