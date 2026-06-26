
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, callback-isolated-executor, cie-thread-configurator, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cie-sample-application";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/callback_isolated_executor-release/archive/release/jazzy/cie_sample_application/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "52d9e5d9098066486898671b834a49133a5a7242d6f77c9f1c11eada4e2f3c2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ callback-isolated-executor cie-thread-configurator rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Sample application to demonstrate the use of cie_thread_configurator and callback_isolated_executor.";
    license = with lib.licenses; [ asl20 ];
  };
}
