
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gazebo-dev, gazebo-ros, geometry-msgs, irobot-create-msgs, irobot-create-toolbox, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-irobot-create-gazebo-plugins";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_gazebo_plugins/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "182e483d873b259788805fc61d5479bb2b078ea2d72e4640a1f844fcec6fe50a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gazebo-dev gazebo-ros geometry-msgs irobot-create-msgs irobot-create-toolbox rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides the Gazebo plugins for the iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
