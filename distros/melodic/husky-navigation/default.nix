
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, gmapping, map-server, move-base, navfn, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-husky-navigation";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_navigation/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "60e5615ec49010db27830b0cd69386ee5472853e07614c2e179b6a07ee688ba5";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner gmapping map-server move-base navfn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
