
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library-example";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/generate_parameter_library_example/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "74263dde0e6fc2398e5fea646920f0f97ea9ee1baf24cc893b2cfc7024e11c53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core generate-parameter-library rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ];

  meta = {
    description = "Example usage of generate_parameter_library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
