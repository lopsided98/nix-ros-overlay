
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, generate-parameter-library, moveit-common, moveit-core, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-moveit-planners-stomp";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_planners_stomp/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "11ad83ec3c5e8ec22b2267c340ac83274d5296d35189e3b6786153a44c06f49b";
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
