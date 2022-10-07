
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp, tcb-span }:
buildRosPackage {
  pname = "ros-humble-parameter-traits";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/parameter_traits/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "4e7290747015efa546d02f0fc4640d03d678652c810fc79825ac9fa1722f6a67";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt rclcpp tcb-span ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Functions and types for rclcpp::Parameter'';
    license = with lib.licenses; [ bsd3 ];
  };
}
