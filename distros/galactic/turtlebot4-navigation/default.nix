
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-navigation";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/galactic/turtlebot4_navigation/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "173e72b8c0b910c817c14632186ebaa04658b5d15981ae2f8819f6a28c5328dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Navigation'';
    license = with lib.licenses; [ asl20 ];
  };
}
