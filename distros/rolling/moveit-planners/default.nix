
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-planners-chomp, moveit-planners-ompl, moveit-planners-stomp, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "293e3d203531ebb314c4d3049371d151f5158d5b687b2e8a0bdaac6d6c9ce551";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-planners-chomp moveit-planners-ompl moveit-planners-stomp pilz-industrial-motion-planner ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that installs all available planners for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
