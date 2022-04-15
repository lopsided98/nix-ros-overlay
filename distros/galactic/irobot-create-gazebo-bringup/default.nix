
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gazebo-plugins, gazebo-ros, irobot-create-common-bringup, irobot-create-control, irobot-create-description, irobot-create-gazebo-plugins, ros2launch }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-gazebo-bringup";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_gazebo_bringup/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c00a3c924a91fbcdaf58fceebac25e7f8d82beedc9fce74e6acda0a8364e0bcb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros irobot-create-common-bringup irobot-create-control irobot-create-description irobot-create-gazebo-plugins ros2launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides launch and configuration scripts for a Gazebo simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
