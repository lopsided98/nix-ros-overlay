
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, generate-parameter-library-py, parameter-traits, rclcpp, rclcpp-lifecycle, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-iron-generate-parameter-library";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/iron/generate_parameter_library/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "839664c803c583cb4c2fa4782511db14a6adea80204c6195efe3b623be2a9a92";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt generate-parameter-library-py parameter-traits rclcpp rclcpp-lifecycle rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake generate-parameter-library-py ];

  meta = {
    description = ''CMake to generate ROS parameter library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
