
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, control-msgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, turtlebot3-manipulation-bringup, turtlebot3-manipulation-description, turtlebot3-manipulation-moveit-config }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-teleop";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_teleop/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "728656bacfa05626a416339474c4e8fe4db475346bbb84fa56107d2bc4f79ea1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ control-msgs geometry-msgs nav-msgs rclcpp sensor-msgs turtlebot3-manipulation-bringup turtlebot3-manipulation-description turtlebot3-manipulation-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Ros2 Package of the turtlebot3_manipulation_teleop'';
    license = with lib.licenses; [ asl20 ];
  };
}
