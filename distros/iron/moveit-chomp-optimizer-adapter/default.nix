
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rsl }:
buildRosPackage {
  pname = "ros-iron-moveit-chomp-optimizer-adapter";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_chomp_optimizer_adapter/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "71ff40d0fa84d748dffffc0381c894bc55c69dd980675ed62c1060e6aded950f";
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
