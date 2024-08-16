
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, as2-behavior, as2-core, as2-motion-reference-handlers, as2-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-motion";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_motion/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6e1acf35e4e6b5d1e8db477f84ed8d424331606433c0ff3d14346b7f9a41861e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-behavior as2-core as2-motion-reference-handlers as2-msgs pluginlib rclcpp rclcpp-action rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 Movement Behaviors Behaviors Meta Package";
    license = with lib.licenses; [ bsd3 ];
  };
}
