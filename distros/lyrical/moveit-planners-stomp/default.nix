
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-common, moveit-core, rsl, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-moveit-planners-stomp";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_planners_stomp/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "bfdecb38273afa50e9a07c1cfd788e0837adc04f42c51b2eeb211aa9c6c765c4";
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
