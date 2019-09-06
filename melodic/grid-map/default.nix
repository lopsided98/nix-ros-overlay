
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-rviz-plugin, grid-map-core, grid-map-visualization, grid-map-demos, catkin, grid-map-filters, grid-map-ros, grid-map-msgs, grid-map-loader, grid-map-cv }:
buildRosPackage {
  pname = "ros-melodic-grid-map";
  version = "1.6.1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map/1.6.1-0.tar.gz";
    name = "1.6.1-0.tar.gz";
    sha256 = "2d9508d17334621b645f0a64f156c765080d5aab918a2ebd69b7a93478e7e53a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization grid-map-filters grid-map-cv grid-map-ros grid-map-msgs grid-map-loader grid-map-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
