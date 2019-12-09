
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-util, nav2-msgs, ament-lint-auto, launch-testing, nav2-behavior-tree, nav2-recoveries, ament-lint-common, nav2-voxel-grid, nav2-map-server, ament-cmake-gtest, nav2-dwb-controller, nav2-costmap-2d, nav2-world-model, nav2-bt-navigator, launch, nav2-amcl, nav2-lifecycle-manager, nav2-rviz-plugins, ament-cmake-pytest, nav2-navfn-planner }:
buildRosPackage {
  pname = "ros-dashing-navigation2";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/navigation2/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "357071c5393bad641dffabc79db52b7d13e8889f50cd912dca25492d170f3c6c";
  };

  buildType = "ament_cmake";
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ nav2-dwb-controller nav2-behavior-tree nav2-recoveries nav2-lifecycle-manager nav2-costmap-2d nav2-world-model nav2-rviz-plugins nav2-voxel-grid nav2-map-server nav2-util nav2-amcl nav2-navfn-planner nav2-msgs nav2-bt-navigator ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Navigation Stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
