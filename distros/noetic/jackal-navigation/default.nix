
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-jackal-navigation";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_navigation/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "f8d8ef3d5ef8fec5474c9a75a17ab57f06765b58f49b3ae3218bdb43bba4d4d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Launch files and code for autonomous navigation of the Jackal";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
