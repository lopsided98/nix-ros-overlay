
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, cmake-modules, tf, catkin, eigen, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-nav-libs";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_nav_libs-release/repository/archive.tar.gz?ref=release/kinetic/homer_nav_libs/0.1.53-0";
    name = "archive.tar.gz";
    sha256 = "875763c5d69764aa9dca369f7e743e1c45c59fc52df48915892afdbf22af0cb5";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs tf cmake-modules eigen roscpp nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs tf eigen roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nav_libs package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
