
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rsl }:
buildRosPackage {
  pname = "ros-rolling-moveit-chomp-optimizer-adapter";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_chomp_optimizer_adapter/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "268335b781e90bbd532e5ea8aaa01c1a89a29830ecbb5bc837a6371d1523399c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-common moveit-core pluginlib rsl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    license = with lib.licenses; [ bsd3 ];
  };
}
