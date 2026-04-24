
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-jazzy-gpio-controllers";
  version = "4.40.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/gpio_controllers/4.40.0-1.tar.gz";
    name = "4.40.0-1.tar.gz";
    sha256 = "612536ae1b43812a0d3f21e1e7bee0d2ec1264f36500f6664680428ab2e0527b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface generate-parameter-library hardware-interface rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controllers to interact with gpios.";
    license = with lib.licenses; [ asl20 ];
  };
}
