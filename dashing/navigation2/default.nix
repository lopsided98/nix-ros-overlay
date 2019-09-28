
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-voxel-grid, nav2-dwb-controller, nav2-lifecycle-manager, nav2-behavior-tree, nav2-bt-navigator, nav2-amcl, nav2-map-server, ament-cmake-pytest, nav2-navfn-planner, ament-cmake-gtest, launch, nav2-util, nav2-rviz-plugins, nav2-world-model, ament-lint-common, launch-testing, nav2-msgs, nav2-costmap-2d, ament-lint-auto, nav2-recoveries }:
buildRosPackage {
  pname = "ros-dashing-navigation2";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/navigation2/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "d26bb9f8ae72595af3cba9b190f646459b4bfd057a4c160eb8f7b0cfd1468a2b";
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
