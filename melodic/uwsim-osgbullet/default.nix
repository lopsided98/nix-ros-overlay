
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, uwsim-bullet, catkin, openscenegraph, uwsim-osgworks, cmake }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgbullet";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgbullet-release/archive/release/melodic/uwsim_osgbullet/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "6674aca98313e69c267c49d5d6df153f12dac2a821540b054e85c2626f2d6012";
  };

  buildType = "cmake";
  buildInputs = [ uwsim-osgworks openscenegraph boost uwsim-bullet ];
  propagatedBuildInputs = [ boost uwsim-bullet catkin openscenegraph uwsim-osgworks ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Bullet library adapted to UWSim. See https://code.google.com/p/osgbullet'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
