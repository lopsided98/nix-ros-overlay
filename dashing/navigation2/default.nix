
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-voxel-grid, nav2-dwb-controller, nav2-lifecycle-manager, nav2-behavior-tree, nav2-bt-navigator, nav2-amcl, nav2-map-server, ament-cmake-pytest, nav2-navfn-planner, ament-cmake-gtest, launch, nav2-util, nav2-rviz-plugins, nav2-world-model, ament-lint-common, launch-testing, nav2-msgs, nav2-costmap-2d, ament-lint-auto, nav2-recoveries }:
buildRosPackage rec {
  pname = "ros-dashing-navigation2";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/navigation2/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "fb62413e8058179b8d42dd780ea7ad233e6c161e469caab9e089a3c62c60b973";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-map-server nav2-voxel-grid nav2-navfn-planner nav2-msgs nav2-world-model nav2-util nav2-rviz-plugins nav2-dwb-controller nav2-costmap-2d nav2-lifecycle-manager nav2-behavior-tree nav2-bt-navigator nav2-recoveries nav2-amcl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Navigation Stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
