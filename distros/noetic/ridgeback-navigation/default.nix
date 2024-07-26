
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-navigation";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_navigation/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "7db3d0db11933fdfefc0322d49e3b7b751a02e9a9cb3df72a6b1ddd3e3feee28";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Launch files and code for autonomous navigation of the Ridgeback";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
