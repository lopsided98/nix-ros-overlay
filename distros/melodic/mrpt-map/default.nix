
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt2, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-map";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_map/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "69089cc6ec912aae009620f315751c3639cf60538349f8b988ecada6089d6054";
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
