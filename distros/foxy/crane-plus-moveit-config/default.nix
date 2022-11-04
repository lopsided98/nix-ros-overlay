
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit, robot-state-publisher, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-moveit-config";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/foxy/crane_plus_moveit_config/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e3a741f509a404ac89bd80d208b8ad609c2808a8d3f3c3cb8ea101117765324f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit robot-state-publisher rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 move_group config package'';
    license = with lib.licenses; [ asl20 ];
  };
}
