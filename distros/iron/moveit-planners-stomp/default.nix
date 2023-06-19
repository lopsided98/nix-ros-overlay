
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, generate-parameter-library, moveit-common, moveit-core, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-moveit-planners-stomp";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_planners_stomp/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "7ce53a4b667a278fe23a7e5c0dc6a3ae856d74095aca311e862b8f7b4091c76c";
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
