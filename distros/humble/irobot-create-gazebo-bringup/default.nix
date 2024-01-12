
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gazebo-plugins, gazebo-ros, gazebo-ros2-control, irobot-create-common-bringup, irobot-create-description, irobot-create-gazebo-plugins, ros2launch }:
buildRosPackage {
  pname = "ros-humble-irobot-create-gazebo-bringup";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_gazebo_bringup/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "01ee694d1012a1e0f05da7109be17c0f1b6c505fc4e6107bc88307b79da36155";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control irobot-create-common-bringup irobot-create-description irobot-create-gazebo-plugins ros2launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides launch and configuration scripts for a Gazebo simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
