
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, std-msgs, tf2-ros, vesc-msgs }:
buildRosPackage {
  pname = "ros-foxy-vesc-ackermann";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/foxy/vesc_ackermann/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "b151ecccdfa20fdec454566a9d86700e2b4a97d3a3ca2af7ef007beae988cf40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ackermann-msgs geometry-msgs nav-msgs rclcpp rclcpp-components std-msgs tf2-ros vesc-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Translate between VESC messages and ROS ackermann and odometry messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
