
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp }:
buildRosPackage {
  pname = "ros-humble-parameter-traits";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/parameter_traits/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "062d9b8616d5c97dec7c1b078dc7f8d4bf7dfc4ead29b5fd133a6535a73f212d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Functions and types for rclcpp::Parameter'';
    license = with lib.licenses; [ bsd3 ];
  };
}
