
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library-example";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/generate_parameter_library_example/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "1e4dcd22cdab883ebd2c12e73785b09eabfe587d03fa5f34c052a85308cd1008";
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
