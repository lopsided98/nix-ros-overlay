
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, openscenegraph, uwsim-bullet, uwsim-osgworks }:
buildRosPackage {
  pname = "ros-kinetic-uwsim-osgbullet";
  version = "3.0.1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgbullet-release/archive/release/kinetic/uwsim_osgbullet/3.0.1-0.tar.gz";
    name = "3.0.1-0.tar.gz";
    sha256 = "a3b912aa1c36abd61d916a60ae4fb67596cdb5893de4caa5f2ae2ca93368ea6e";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin openscenegraph uwsim-bullet uwsim-osgworks ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Bullet library adapted to UWSim. See https://code.google.com/p/osgbullet'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
