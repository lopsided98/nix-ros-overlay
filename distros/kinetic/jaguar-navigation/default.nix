
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, frontier-exploration, gmapping, map-server, move-base, navfn, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-jaguar-navigation";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_navigation/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "4e3641e1523e34a555daca7e5c122f7e6a2978c7f997b3e8b4943dedc883329d";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner frontier-exploration gmapping map-server move-base navfn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation package for DrRobot's Jaguar 4X4'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
