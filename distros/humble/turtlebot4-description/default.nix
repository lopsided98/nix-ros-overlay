
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-description, joint-state-publisher, robot-state-publisher, urdf }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-description";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/turtlebot4_description/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "36a18c35b30d8df33daa4dbf6b68d0ec76c5b4489f2b9e0ac4dff10eebb1c212";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-description joint-state-publisher robot-state-publisher urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
