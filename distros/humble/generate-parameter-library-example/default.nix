
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library-example";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/generate_parameter_library_example/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "538e0e00f18c9e0c1be0232b7cb8c6307a6aa3c4ba621e66e36574c08d515111";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core generate-parameter-library rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ];

  meta = {
    description = ''Example usage of generate_parameter_library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
