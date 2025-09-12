
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-common, moveit-core, rsl, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-planners-stomp";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_planners_stomp/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "5aa9158d75fc39ad598d56227e025f20541f52e7cfd27ff40250dffb18cdfdd4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ generate-parameter-library moveit-common moveit-core rsl std-msgs stomp tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "STOMP Motion Planner for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
