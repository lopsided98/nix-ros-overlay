
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, controller-interface, elite-robots-msgs, generate-parameter-library, hardware-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, rcutils, realtime-tools, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-elite-robots-controllers";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/jazzy/elite_robots_controllers/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "7877e6b1f3504fe4880eb5b0746ebfe5aa9451986da25c26d1b3dd8ad50f9cc9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles controller-interface elite-robots-msgs generate-parameter-library hardware-interface joint-trajectory-controller lifecycle-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils rcutils realtime-tools std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides controllers that use the speed scaling interface of Elite CS series robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
