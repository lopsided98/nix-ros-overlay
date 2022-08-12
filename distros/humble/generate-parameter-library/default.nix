
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, generate-parameter-library-py, parameter-traits, rclcpp, rclcpp-lifecycle, tcb-span }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/generate_parameter_library/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "58a4e0c55a174c8f512641305088669daea58c734e3e0dcdb4c9bfd9d4e83b45";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt generate-parameter-library-py parameter-traits rclcpp rclcpp-lifecycle tcb-span ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake to generate ROS parameter library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
