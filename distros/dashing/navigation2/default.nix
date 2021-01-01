
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, nav2-amcl, nav2-behavior-tree, nav2-bt-navigator, nav2-costmap-2d, nav2-dwb-controller, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-recoveries, nav2-rviz-plugins, nav2-util, nav2-voxel-grid, nav2-world-model }:
buildRosPackage {
  pname = "ros-dashing-navigation2";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/navigation2/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "357071c5393bad641dffabc79db52b7d13e8889f50cd912dca25492d170f3c6c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ nav2-amcl nav2-behavior-tree nav2-bt-navigator nav2-costmap-2d nav2-dwb-controller nav2-lifecycle-manager nav2-map-server nav2-msgs nav2-navfn-planner nav2-recoveries nav2-rviz-plugins nav2-util nav2-voxel-grid nav2-world-model ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Navigation Stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
