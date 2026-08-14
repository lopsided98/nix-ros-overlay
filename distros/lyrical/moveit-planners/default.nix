
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-planners-chomp, moveit-planners-ompl, moveit-planners-stomp, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-lyrical-moveit-planners";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_planners/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "d796558cb85ce8f82ee5328f6c5a4955101f9cf1682f2f5c37bb2f8bc6a22eed";
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
