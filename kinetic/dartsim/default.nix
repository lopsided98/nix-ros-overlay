
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, boost, catkin, tinyxml, assimp, pkg-config, urdfdom, tinyxml-2, xorg, freeglut, cmake, eigen }:
buildRosPackage {
  pname = "ros-kinetic-dartsim";
  version = "6.3.1-r2";

  src = fetchurl {
    url = https://github.com/dartsim/ros-dartsim-release/archive/release/kinetic/dartsim/6.3.1-2.tar.gz;
    sha256 = "81551748e5acdff192a6eb0990ea9811e96befaed0745201307e3cfc0f73a334";
  };

  buildInputs = [ bullet boost tinyxml assimp pkg-config urdfdom xorg.libXi tinyxml-2 eigen freeglut xorg.libXmu ];
  propagatedBuildInputs = [ bullet boost catkin tinyxml assimp urdfdom xorg.libXi tinyxml-2 eigen freeglut xorg.libXmu ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''DART (Dynamic Animation and Robotics Toolkit) is a collaborative,
    cross-platform, open source library created by the Georgia Tech Graphics
    Lab and Humanoid Robotics Lab, with ongoing support by the University
    of Washington Personal Robotics Lab and Open Robotics. DART provides data
    structures and algorithms for kinematic and dynamic applications in robotics
    and computer animation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
