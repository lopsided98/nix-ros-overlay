
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-msgs, grid-map-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-grid-map-loader";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_loader/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "9670bfef23a27ede70e0de843882f6b641ce26c13052c1afcd5e1c741fbe6e99";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-msgs grid-map-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Loading and publishing grid maps from bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
