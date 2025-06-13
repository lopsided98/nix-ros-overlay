
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-generate-parameter-library-example";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/generate_parameter_library_example/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "0f9a7c18da9a42e820525d36b612de656fa27159423ee3336bbf64e24bdaa282";
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
