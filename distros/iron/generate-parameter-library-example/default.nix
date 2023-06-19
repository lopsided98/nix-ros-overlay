
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-iron-generate-parameter-library-example";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/iron/generate_parameter_library_example/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "f343ee54f5dac50edf4732f8648fef282b8b28d888fbb2ca90ba0c6a4d3ccf6e";
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
