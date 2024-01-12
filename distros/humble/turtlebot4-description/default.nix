
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-description, joint-state-publisher, robot-state-publisher, urdf }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-description";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/turtlebot4_description/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "cbdac376de0ce1ab83d109b39e7fccb8861b201fcc022d6696c023142805c0d8";
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
