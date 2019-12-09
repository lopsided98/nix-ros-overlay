
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cost-map-visualisations, tf, catkin, costmap-2d, rviz, ecl-console, cost-map-ros, roscpp, nav-msgs, ecl-build }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-demos";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_demos/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "df4430d5c45e19156de9ed0ff3f12c3cb823db273df85f95e4900e799ca715aa";
  };

  buildType = "catkin";
  buildInputs = [ cost-map-visualisations tf costmap-2d ecl-console cost-map-ros roscpp nav-msgs ecl-build ];
  propagatedBuildInputs = [ cost-map-visualisations tf costmap-2d rviz ecl-console cost-map-ros roscpp nav-msgs ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstrations for cost maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
