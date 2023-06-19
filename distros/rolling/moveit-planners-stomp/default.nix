
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, generate-parameter-library, moveit-common, moveit-core, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners-stomp";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners_stomp/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "8ff47754e9640a300a870aedf3aca66b463a8d61dfd517372b72aa61c158e15d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ generate-parameter-library moveit-common moveit-core std-msgs stomp tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''STOMP Motion Planner for MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
