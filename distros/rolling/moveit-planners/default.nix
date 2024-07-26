
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-planners-ompl, moveit-planners-stomp, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "cae987d2bc692d7f0bb3792c8df0130dc10b8d56d3e339a1042b0355ca47a067";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-planners-ompl moveit-planners-stomp pilz-industrial-motion-planner ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that installs all available planners for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
