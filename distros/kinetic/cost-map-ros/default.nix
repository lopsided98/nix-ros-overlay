
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cost-map-core, cost-map-msgs, costmap-2d, ecl-build, ecl-command-line, ecl-console, grid-map-core, grid-map-costmap-2d, grid-map-ros, grid-map-visualization, libyamlcpp, nav-msgs, opencv3, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-ros";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_ros/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "79e23bddf96227bb9047882efe9ab159aadc3597cdaa61dc93e3143bc5df40e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cost-map-core cost-map-msgs costmap-2d ecl-build ecl-command-line ecl-console grid-map-core grid-map-costmap-2d grid-map-ros grid-map-visualization libyamlcpp nav-msgs opencv3 roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cost maps, following the style of ethz-asl's grid_map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
