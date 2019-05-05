
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-core-adapter, costmap-queue, dwb-plugins, locomotor-msgs, nav-2d-msgs, nav-grid, nav-core2, catkin, nav-2d-utils, locomove-base, locomotor, nav-grid-iterators, dwb-local-planner, nav-grid-pub-sub, dlux-plugins, dlux-global-planner, dwb-critics, dwb-msgs, global-planner-tests }:
buildRosPackage {
  pname = "ros-melodic-robot-navigation";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/robot_navigation/0.2.5-1.tar.gz;
    sha256 = "c7d0ad170d41279ececdacd19f49e8e5116edf8b45a0be3f66a0fe5a707b9c08";
  };

  propagatedBuildInputs = [ dwb-local-planner nav-core-adapter nav-grid-pub-sub dlux-plugins nav-grid dlux-global-planner nav-core2 costmap-queue dwb-critics nav-2d-msgs dwb-plugins nav-2d-utils locomove-base dwb-msgs locomotor locomotor-msgs global-planner-tests nav-grid-iterators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
