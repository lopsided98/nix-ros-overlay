
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-description, joint-state-publisher, robot-state-publisher, urdf }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-description";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/jazzy/turtlebot4_description/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "0c3011a39fec353c0aa1419afdb48f1d37d4d0948544cbf35fce8270c7ff2456";
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
