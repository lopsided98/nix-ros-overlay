
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, control-msgs, irobot-create-msgs, irobot-create-toolbox, nav-msgs, rclcpp, rclcpp-action, rcutils, ros-ign-interfaces, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-ignition-toolbox";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_ignition_toolbox/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "cd906f3b56485c235b34fab594e398447de07978aacbbe7d01cbe0db01b60395";
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
