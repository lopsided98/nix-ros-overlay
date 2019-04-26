
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, frontier-exploration, map-server, amcl, base-local-planner, navfn, catkin, move-base, dwa-local-planner, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-husky-navigation";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_navigation/0.3.3-0.tar.gz;
    sha256 = "aa5e6782581f997fa1e578ebd250e0252fe886a313aad6c0ce35c46e137a4b5f";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gmapping dwa-local-planner frontier-exploration amcl map-server base-local-planner navfn move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    #license = lib.licenses.BSD;
  };
}
