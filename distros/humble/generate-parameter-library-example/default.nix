
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library-example";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/generate_parameter_library_example/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "819b12bfa9f3f22ac657a3fe2b470ef6227050cfc7ff14f8edb9a60777dd532d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core generate-parameter-library rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example usage of generate_parameter_library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
