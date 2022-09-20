
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, openscenegraph, uwsim-bullet, uwsim-osgworks }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgbullet";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgbullet-release/archive/release/melodic/uwsim_osgbullet/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "02837902799dfbced008ccff28abccb0b7115e2c3efeb2733496e2246a031582";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin openscenegraph uwsim-bullet uwsim-osgworks ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Bullet library adapted to UWSim. See https://code.google.com/p/osgbullet'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
