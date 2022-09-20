
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-description, robot-state-publisher, urdf }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-description";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/galactic/turtlebot4_description/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "323a1021b964fb61db5666bccf287a253b9b694a375170dc5181d6b9dc2421b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-description robot-state-publisher urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
