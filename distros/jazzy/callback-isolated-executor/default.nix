
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cie-config-msgs, cie-thread-configurator, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-callback-isolated-executor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/callback_isolated_executor-release/archive/release/jazzy/callback_isolated_executor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fc7dc1f8df8a3ac09c972a42030da514342ba4f23443e51e21f1eda5a606456f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cie-config-msgs cie-thread-configurator rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Component container and executor assigning a dedicated thread to each callback group.";
    license = with lib.licenses; [ asl20 ];
  };
}
