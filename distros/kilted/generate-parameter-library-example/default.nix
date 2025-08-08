
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-generate-parameter-library-example";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/generate_parameter_library_example/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "738594169864db1df044ff2026e38b206eabab061bac6c7c2871fe0719c1ef3a";
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
