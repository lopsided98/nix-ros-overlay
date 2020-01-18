
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, nav2-amcl, nav2-bt-navigator, nav2-costmap-2d, nav2-dwb-controller, nav2-dynamic-params, nav2-map-server, nav2-mission-executor, nav2-motion-primitives, nav2-msgs, nav2-navfn-planner, nav2-robot, nav2-simple-navigator, nav2-tasks, nav2-util, nav2-voxel-grid, nav2-world-model }:
buildRosPackage {
  pname = "ros-crystal-navigation2";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/navigation2/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "a64c995199a6691b261ad3789606d0fdaf56f46c582a87ea488bee4c4228d7c0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ nav2-amcl nav2-bt-navigator nav2-costmap-2d nav2-dwb-controller nav2-dynamic-params nav2-map-server nav2-mission-executor nav2-motion-primitives nav2-msgs nav2-navfn-planner nav2-robot nav2-simple-navigator nav2-tasks nav2-util nav2-voxel-grid nav2-world-model ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Navigation Stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
