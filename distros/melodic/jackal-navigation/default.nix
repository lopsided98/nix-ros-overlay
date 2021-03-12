
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-jackal-navigation";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_navigation/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "f82c63ffae977dfea5387c2d3b9d83b90013030b6a0937a09c762ff3638f7160";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
