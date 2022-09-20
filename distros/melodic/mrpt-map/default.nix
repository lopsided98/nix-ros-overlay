
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt2, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-map";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_map/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "24ef2e1113adfdd73ba8564c967eb127dc979be58553a0446113c1e1188f8692";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt2 nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
