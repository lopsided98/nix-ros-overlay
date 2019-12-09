
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-queue, locomotor, nav-2d-msgs, nav-2d-utils, dlux-global-planner, locomove-base, locomotor-msgs, nav-grid-pub-sub, dwb-msgs, dwb-critics, dwb-plugins, global-planner-tests, nav-grid, nav-core2, catkin, dlux-plugins, nav-core-adapter, dwb-local-planner, nav-grid-iterators }:
buildRosPackage {
  pname = "ros-melodic-robot-navigation";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/robot_navigation/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "c7d0ad170d41279ececdacd19f49e8e5116edf8b45a0be3f66a0fe5a707b9c08";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ global-planner-tests nav-grid-iterators locomove-base dwb-msgs locomotor-msgs nav-grid nav-core2 costmap-queue nav-grid-pub-sub dlux-plugins locomotor dwb-local-planner nav-core-adapter nav-2d-msgs dwb-critics dwb-plugins nav-2d-utils dlux-global-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
