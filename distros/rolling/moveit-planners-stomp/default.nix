
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, generate-parameter-library, moveit-common, moveit-core, rsl, std-msgs, stomp, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners-stomp";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners_stomp/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "1467103a6f581423fb0f57a74038d14da87c03be668aab0252a695332540adc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ generate-parameter-library moveit-common moveit-core rsl std-msgs stomp tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''STOMP Motion Planner for MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
