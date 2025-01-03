
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-description, joint-state-publisher, robot-state-publisher, urdf }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-description";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/turtlebot4_description/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "ee3d997b33694e62d391fe0bd5cebe8605e2d3d2dbbc535bc4870cdab81bf8f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-description joint-state-publisher robot-state-publisher urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Description package";
    license = with lib.licenses; [ asl20 ];
  };
}
