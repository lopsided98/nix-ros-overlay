
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gazebo-dev, gazebo-ros, geometry-msgs, irobot-create-msgs, irobot-create-toolbox, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-gazebo-plugins";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_gazebo_plugins/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "04cc691dc52b639b6699292aabfa47ab9fb13e1e4be26819adb1272be7d39960";
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
