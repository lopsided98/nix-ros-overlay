
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, frontier-exploration, map-server, amcl, base-local-planner, navfn, catkin, move-base, dwa-local-planner, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-husky-navigation";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_navigation/0.3.2-0.tar.gz;
    sha256 = "d23ca344b12ece712e41e43f45e6f452a0fd87cbf42241f6eda768a0c3114b4d";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gmapping dwa-local-planner frontier-exploration amcl map-server base-local-planner navfn move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    #license = lib.licenses.BSD;
  };
}
