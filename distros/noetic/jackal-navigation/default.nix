
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-jackal-navigation";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_navigation/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "f2aaba6d5af6da098c81b28cd6bb7c9f548896a38c7161d1498cb74ed8a135f5";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
