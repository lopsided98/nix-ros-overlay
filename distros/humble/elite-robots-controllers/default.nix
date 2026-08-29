
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, controller-interface, elite-robots-msgs, generate-parameter-library, hardware-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, rcutils, realtime-tools, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-elite-robots-controllers";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots_controllers/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "babfa8f2439350241e772658ff471c2505f1611d24db3e1a945f5a1f9e1a24bd";
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
