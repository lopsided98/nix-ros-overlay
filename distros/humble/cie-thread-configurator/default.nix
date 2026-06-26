
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cie-config-msgs, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-cie-thread-configurator";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/callback_isolated_executor-release/archive/release/humble/cie_thread_configurator/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d19a3b3a1006df03900a6c06d9f7be17c37f00fe4b5a1112838efd4ef7124e5a";
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
