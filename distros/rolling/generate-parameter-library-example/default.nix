
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-library-example";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_library_example/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "e48f975e1ce20e67be24b354ef0cdb5d804a46af783088b3ccc307e57d33d6ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core generate-parameter-library rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ];

  meta = {
    description = ''Example usage of generate_parameter_library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
