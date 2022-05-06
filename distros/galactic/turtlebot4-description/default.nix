
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-description, robot-state-publisher, urdf }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/galactic/turtlebot4_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "6f9fb98d371d784f3ff06385bf82dd1b2c69f64aa974658ead54a1f6ad0df63f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-description robot-state-publisher urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
