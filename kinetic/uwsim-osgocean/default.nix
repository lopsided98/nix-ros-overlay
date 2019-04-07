
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openscenegraph, libGL, libGLU, cmake, fftw }:
buildRosPackage {
  pname = "ros-kinetic-uwsim-osgocean";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uji-ros-pkg/uwsim_osgocean-release/archive/release/kinetic/uwsim_osgocean/1.0.3-0.tar.gz;
    sha256 = "3c990411b0b339b4072b45f71e1c6669cb188914e9366428b024edbf6f83b579";
  };

  buildInputs = [ boost libGLU libGL openscenegraph fftw ];
  propagatedBuildInputs = [ libGL boost libGLU catkin openscenegraph fftw ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Ocean library adapted to UWSim. See https://code.google.com/p/osgocean'';
    #license = lib.licenses.LGPL;
  };
}
