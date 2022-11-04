
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gazebo-plugins, gazebo-ros, gazebo-ros2-control, irobot-create-common-bringup, irobot-create-description, irobot-create-gazebo-plugins, ros2launch }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-gazebo-bringup";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_gazebo_bringup/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "aa69dc89b6813b8af037cb7d9b9de62b65333ba6fda8b7d92610318523aeec83";
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
