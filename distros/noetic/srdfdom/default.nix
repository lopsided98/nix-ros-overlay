
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, console-bridge, rostest, tinyxml-2, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-srdfdom";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/srdfdom-release/archive/release/noetic/srdfdom/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "5f73ceb8a4fb3bfd8da9f212de0331b0567e40016fdc0808caa36c547bf068d8";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules console-bridge ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost tinyxml-2 urdf urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
