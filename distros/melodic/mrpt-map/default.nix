
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-bridge, mrpt2, nav-msgs, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mrpt-map";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_map/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7af95b573fa3ab1972b6e4ca1b6246c1991a98eff45bb9ba1c4e1b3e46172725";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mrpt-bridge mrpt2 nav-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
