
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library-example, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-generate-parameter-library-example-external";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/generate_parameter_library_example_external/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "aba1189ed410954a8b1e8be90d85de42809de728938f3328093a9a85e4bb0bc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core generate-parameter-library-example rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ];

  meta = {
    description = "Example usage of a parameter header generated in another package.";
    license = with lib.licenses; [ bsd3 ];
  };
}
