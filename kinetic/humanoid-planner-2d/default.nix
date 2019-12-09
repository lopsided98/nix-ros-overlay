
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, sbpl, catkin, gridmap-2d, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-humanoid-planner-2d";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/humanoid_planner_2d/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "92eb24ebd3a9ba584aef0cdbccf9043017208b34ad766d4ed98bc350bdf135f4";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs sbpl gridmap-2d visualization-msgs roscpp ];
  propagatedBuildInputs = [ geometry-msgs sbpl gridmap-2d visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''humanoid_planner_2d - provides a simple 2D path planner as wrapper around SBPL (ARA*, AD*, R*).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
