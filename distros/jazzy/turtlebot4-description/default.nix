
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-description, joint-state-publisher, robot-state-publisher, urdf }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-description";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/jazzy/turtlebot4_description/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "ba74fab5a2b295f9c1ec450a03a36e3f8cb375757cd416ecdf29484e06d4a18b";
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
