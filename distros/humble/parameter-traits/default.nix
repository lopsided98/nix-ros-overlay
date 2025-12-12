
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-parameter-traits";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/parameter_traits/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "f3c96ba36df63eac05912d9db9a77c44c96853b54885da5e24bf0d5559f19303";
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
