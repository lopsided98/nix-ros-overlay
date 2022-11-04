
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rover-bringup, rover-navigation }:
buildRosPackage {
  pname = "ros-foxy-rover-simulation";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/rover_simulation/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "25307e4c7b66b0f9f8abab68e457b7f87d5a9ebc323a7a981dfc0738f41a5ff9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rover-bringup rover-navigation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files for Rover Simulation'';
    license = with lib.licenses; [ bsd3 ];
  };
}
