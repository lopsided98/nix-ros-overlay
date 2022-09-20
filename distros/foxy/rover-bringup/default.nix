
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, rover-driver }:
buildRosPackage {
  pname = "ros-foxy-rover-bringup";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/rover_bringup/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "3523442a078155c2b153edcf9363f62d4f389357b2f23ba5872b83449118e49c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher rover-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files and configuration scripts for operation of the Rover and suported sensors.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
