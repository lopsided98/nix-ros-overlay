
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-kilted-parameter-traits";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/parameter_traits/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "ba96e0469db67b0a007f4f860a3d9095f242fffec2ed13bf3f5f0bb54c6f28d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt rclcpp rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Functions and types for rclcpp::Parameter";
    license = with lib.licenses; [ bsd3 ];
  };
}
