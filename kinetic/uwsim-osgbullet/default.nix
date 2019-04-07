
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, uwsim-bullet, catkin, openscenegraph, uwsim-osgworks, cmake }:
buildRosPackage {
  pname = "ros-kinetic-uwsim-osgbullet";
  version = "3.0.1";

  src = fetchurl {
    url = https://github.com/uji-ros-pkg/uwsim_osgbullet-release/archive/release/kinetic/uwsim_osgbullet/3.0.1-0.tar.gz;
    sha256 = "a3b912aa1c36abd61d916a60ae4fb67596cdb5893de4caa5f2ae2ca93368ea6e";
  };

  buildInputs = [ uwsim-osgworks openscenegraph boost uwsim-bullet ];
  propagatedBuildInputs = [ uwsim-osgworks boost uwsim-bullet catkin openscenegraph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Bullet library adapted to UWSim. See https://code.google.com/p/osgbullet'';
    #license = lib.licenses.LGPL;
  };
}
