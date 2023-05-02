
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-library-example";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_library_example/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "cf22422e2726ea261ce4399bb058e663e2df035a7ff99d6833472747ae8bb1e2";
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
