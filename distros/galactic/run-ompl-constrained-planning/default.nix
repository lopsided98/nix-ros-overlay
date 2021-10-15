
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, moveit-common, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning-interface, robot-state-publisher, rviz2, tf2-ros, warehouse-ros-mongo }:
buildRosPackage {
  pname = "ros-galactic-run-ompl-constrained-planning";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/run_ompl_constrained_planning/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "30db95627c4a9e6f2a33c4053e3916372e498fa9f0cdec4578a05a41305f3c3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager moveit-resources-panda-moveit-config moveit-ros-move-group moveit-ros-planning-interface robot-state-publisher rviz2 tf2-ros warehouse-ros-mongo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo ompl constrained planning capabilities'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
