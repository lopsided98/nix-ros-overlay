
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joy, rclpy }:
buildRosPackage {
  pname = "ros-foxy-rover-teleop";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/rover_teleop/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "7ecc599c243f529056201046b6f8d520619e0abcc9bee1b497b5deb990a7876c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joy rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains Rover provided teleoperation applications.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
