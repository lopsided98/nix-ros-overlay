
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, nav-msgs, python3Packages, rclpy, robot-state-publisher, rviz2, sensor-msgs, std-msgs, tf2-ros, webots-ros2-control, webots-ros2-driver, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-epuck";
  version = "2025.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_epuck/2025.0.1-1.tar.gz";
    name = "2025.0.1-1.tar.gz";
    sha256 = "77fb737b548d57a827ea63a1992cd02889e397080a89e25482d2f49f2468526b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster nav-msgs rclpy robot-state-publisher rviz2 sensor-msgs std-msgs tf2-ros webots-ros2-control webots-ros2-driver webots-ros2-msgs ];

  meta = {
    description = "E-puck2 driver for Webots simulated robot";
    license = with lib.licenses; [ asl20 ];
  };
}
