
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp }:
buildRosPackage {
  pname = "ros-humble-parameter-traits";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/parameter_traits/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "bff94789d0050743419948da5c8c0c7a3948217454c887246cb08afa3b5c5bc2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Functions and types for rclcpp::Parameter'';
    license = with lib.licenses; [ bsd3 ];
  };
}
