
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, frontier-exploration, gmapping, map-server, move-base, navfn, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-husky-navigation";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_navigation/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "63fbf18b8a5d141f814409fd19dbe731c942b3760d031e33f322087989c6a0c2";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner frontier-exploration gmapping map-server move-base navfn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
