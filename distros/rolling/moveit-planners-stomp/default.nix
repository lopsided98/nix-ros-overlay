
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, generate-parameter-library, moveit-common, moveit-core, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners-stomp";
  version = "2.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners_stomp/2.8.0-2.tar.gz";
    name = "2.8.0-2.tar.gz";
    sha256 = "794b11252529b09311e4640f8898f7c376c7c9c3f87bafb2ae784f3e6a227d3c";
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
