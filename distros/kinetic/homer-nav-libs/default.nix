
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-homer-nav-libs";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_nav_libs-release/repository/archive.tar.gz?ref=release/kinetic/homer_nav_libs/0.1.53-0";
    name = "archive.tar.gz";
    sha256 = "875763c5d69764aa9dca369f7e743e1c45c59fc52df48915892afdbf22af0cb5";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nav_libs package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
