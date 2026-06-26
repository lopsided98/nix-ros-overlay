
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cie-config-msgs, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-cie-thread-configurator";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/callback_isolated_executor-release/archive/release/jazzy/cie_thread_configurator/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f0e59ef5c21e7f24af0922ed8030824f0baeb8cb04e65b4b4f56ad7c70955201";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cie-config-msgs rclcpp yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A dedicated node that configures the scheduling attributes of each thread in callback_isolated_executor.";
    license = with lib.licenses; [ asl20 ];
  };
}
