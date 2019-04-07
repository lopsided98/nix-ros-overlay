
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, sensor-msgs, catkin, nav-msgs, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-nav-libs";
  version = "0.1.53";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_nav_libs-release/repository/archive.tar.gz?ref=release/kinetic/homer_nav_libs/0.1.53-0;
    sha256 = "875763c5d69764aa9dca369f7e743e1c45c59fc52df48915892afdbf22af0cb5";
  };

  buildInputs = [ nav-msgs cmake-modules eigen tf sensor-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ nav-msgs eigen tf sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nav_libs package'';
    #license = lib.licenses.GPLv3;
  };
}
