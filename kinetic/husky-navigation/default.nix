
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, frontier-exploration, gmapping, map-server, move-base, navfn, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-husky-navigation";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_navigation/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "d7ff2b3af3b8aa2ceb7e5ce0f9fb310b95b259325f57a2683af2c2d5b19c27af";
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
