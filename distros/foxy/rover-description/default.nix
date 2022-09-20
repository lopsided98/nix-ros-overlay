
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, urdf }:
buildRosPackage {
  pname = "ros-foxy-rover-description";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/rover_description/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "b5f901e2e0959833c1e705541852add919352a1a4e976e45ea79fedf172ee365";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF description of Rover.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
