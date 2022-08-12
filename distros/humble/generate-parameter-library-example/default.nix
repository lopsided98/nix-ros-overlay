
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library-example";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/generate_parameter_library_example/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "abff6cae0538471850a56d0b0a7bd5f90630add97cdafe018de011be78f101a1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core generate-parameter-library rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example usage of generate_parameter_library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
