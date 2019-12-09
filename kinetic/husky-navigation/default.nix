
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, frontier-exploration, map-server, catkin, base-local-planner, gmapping, move-base, amcl, roslaunch, navfn, dwa-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-husky-navigation";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_navigation/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "dcdac9fbdd79fc93fd7275ca3824d35b27a4397a69993b78399004d016f7764f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ frontier-exploration map-server base-local-planner gmapping move-base amcl navfn dwa-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
