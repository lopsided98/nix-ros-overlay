
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rover-bringup, rover-description, rover-driver, rover-msgs, rover-navigation, rover-teleop }:
buildRosPackage {
  pname = "ros-foxy-roverrobotics-ros2";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/roverrobotics_ros2/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "f023f5877ac477b58450fbdd5743150d656f3e83a82f5bdefd628d0ad3b53888";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rover-bringup rover-description rover-driver rover-msgs rover-navigation rover-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for communicating with a Rover Pro.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
