
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-core, moveit-planners, moveit-plugins, moveit-ros, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-jazzy-moveit";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "b54610b778d661436a86e3734b613772fa1c2095fb8745e4066ba2deebb6bd4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros moveit-setup-assistant ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that contains all essential packages of MoveIt 2";
    license = with lib.licenses; [ bsd3 ];
  };
}
