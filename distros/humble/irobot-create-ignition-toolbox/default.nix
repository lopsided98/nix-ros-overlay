
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, control-msgs, irobot-create-msgs, irobot-create-toolbox, nav-msgs, rclcpp, rclcpp-action, rcutils, ros-ign-interfaces, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-irobot-create-ignition-toolbox";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_ignition_toolbox/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8e7746fc0c28603d5cdce006a5a5b2e98810cdbcd0a5fc9b6981436b59762d2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ control-msgs irobot-create-msgs irobot-create-toolbox nav-msgs rclcpp rclcpp-action rcutils ros-ign-interfaces sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Nodes and tools for simulating in Ignition iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
