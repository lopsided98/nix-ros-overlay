
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-common, moveit-core, rsl, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners-stomp";
  version = "2.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners_stomp/2.14.1-2.tar.gz";
    name = "2.14.1-2.tar.gz";
    sha256 = "2520d1e94a154add104a6faa64a51546faf5e7dfb420bef57d5e026173576de9";
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
