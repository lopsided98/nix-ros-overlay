
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-common, moveit-core, rsl, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-moveit-planners-stomp";
  version = "2.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_planners_stomp/2.12.3-1.tar.gz";
    name = "2.12.3-1.tar.gz";
    sha256 = "7dbb65b3f17b4e92f113da63cb191c7cd61fb78c4758d9f3ff8564a50a3dc0e7";
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
