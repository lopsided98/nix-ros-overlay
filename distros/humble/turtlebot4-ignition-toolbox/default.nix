
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rcutils, ros-ign-interfaces, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-ignition-toolbox";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/humble/turtlebot4_ignition_toolbox/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "52ecf57a2b4dae61d1471cfdd4dafb0265adbf1367eb504f5ea6ebfa68fdcbdb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rcutils ros-ign-interfaces sensor-msgs std-msgs turtlebot4-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Ignition Toolbox";
    license = with lib.licenses; [ asl20 ];
  };
}
