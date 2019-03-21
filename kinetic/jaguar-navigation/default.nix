
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, frontier-exploration, map-server, amcl, base-local-planner, navfn, catkin, move-base, dwa-local-planner, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-jaguar-navigation";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_navigation/0.1.0-0.tar.gz;
    sha256 = "4e3641e1523e34a555daca7e5c122f7e6a2978c7f997b3e8b4943dedc883329d";
  };

  propagatedBuildInputs = [ gmapping dwa-local-planner frontier-exploration amcl map-server base-local-planner navfn move-base ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Navigation package for DrRobot's Jaguar 4X4'';
    #license = lib.licenses.BSD;
  };
}
