
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, angles, boost, control-msgs, geometry-msgs, irobot-create-msgs, irobot-create-toolbox, nav-msgs, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-irobot-create-nodes";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_nodes/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "3682a96746d82158c19926625e7a564cb994c57bc7d06dd9e1dc393a9b7aaf71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ angles boost control-msgs geometry-msgs irobot-create-msgs irobot-create-toolbox nav-msgs rclcpp rclcpp-action rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 Nodes for the simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
