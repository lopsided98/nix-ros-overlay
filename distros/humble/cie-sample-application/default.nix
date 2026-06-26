
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, callback-isolated-executor, cie-thread-configurator, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-cie-sample-application";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/callback_isolated_executor-release/archive/release/humble/cie_sample_application/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ff8af992f139c17a1f86ccbb2fa6af6bbb7cb8dcf3c603681ccbfe0f74de3c36";
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
