
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-parameter-traits";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/rolling/parameter_traits/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9abb0f7275b3a4a05645b572fb47b2100b96d73f6825d5a85d351e5ddc78c87c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt rclcpp rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Functions and types for rclcpp::Parameter'';
    license = with lib.licenses; [ bsd3 ];
  };
}
