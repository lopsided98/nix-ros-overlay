
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, costmap-2d, ecl-console, boost, grid-map-visualization, ecl-command-line, libyamlcpp, cost-map-msgs, opencv3, catkin, grid-map-costmap-2d, ecl-build, nav-msgs, grid-map-ros, roslib, cost-map-core }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-ros";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_ros/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "79e23bddf96227bb9047882efe9ab159aadc3597cdaa61dc93e3143bc5df40e7";
  };

  buildType = "catkin";
  buildInputs = [ grid-map-core ecl-console costmap-2d boost grid-map-visualization ecl-command-line libyamlcpp cost-map-msgs grid-map-costmap-2d ecl-build roslib nav-msgs grid-map-ros cost-map-core opencv3 ];
  propagatedBuildInputs = [ grid-map-core ecl-console costmap-2d grid-map-visualization boost ecl-command-line libyamlcpp cost-map-msgs grid-map-costmap-2d ecl-build roslib grid-map-ros nav-msgs cost-map-core opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cost maps, following the style of ethz-asl's grid_map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
