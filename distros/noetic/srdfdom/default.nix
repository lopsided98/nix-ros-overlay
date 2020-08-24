
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, console-bridge, rostest, tinyxml-2, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-srdfdom";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/srdfdom-release/archive/release/noetic/srdfdom/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "e9ecceaeacf6260c936f3fa86000f42a517549e7e8ada3f32433588d39c683a5";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules console-bridge ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost tinyxml-2 urdf urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
