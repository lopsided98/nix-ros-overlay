
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-common, moveit-core, rsl, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-planners-stomp";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_planners_stomp/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "df774b9be5c567d18ef8c2f4bea4e3981d1f6a5999683c3248253e487d86994d";
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
