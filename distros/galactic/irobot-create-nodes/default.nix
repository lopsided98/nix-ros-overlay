
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, angles, boost, control-msgs, geometry-msgs, irobot-create-msgs, irobot-create-toolbox, nav-msgs, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-nodes";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_nodes/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "eff3a2a6943772dd2ba1b53e65883006b6fd859351f264018002cebb6a8947b8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ angles boost control-msgs geometry-msgs irobot-create-msgs irobot-create-toolbox nav-msgs rclcpp rclcpp-action rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 Nodes for the simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
