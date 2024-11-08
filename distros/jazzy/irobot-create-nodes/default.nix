
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, angles, boost, control-msgs, geometry-msgs, irobot-create-msgs, irobot-create-toolbox, nav-msgs, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-nodes";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_nodes/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "ba030e4c381ac06062087629f3e1fec0604b0cde4bc4e174d565a37941efc635";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ angles boost control-msgs geometry-msgs irobot-create-msgs irobot-create-toolbox nav-msgs rclcpp rclcpp-action rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Nodes for the simulated iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
