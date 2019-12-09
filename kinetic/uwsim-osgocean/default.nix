
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libGLU, cmake, libGL, fftw, openscenegraph }:
buildRosPackage {
  pname = "ros-kinetic-uwsim-osgocean";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgocean-release/archive/release/kinetic/uwsim_osgocean/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "3c990411b0b339b4072b45f71e1c6669cb188914e9366428b024edbf6f83b579";
  };

  buildType = "cmake";
  buildInputs = [ boost libGLU libGL fftw openscenegraph ];
  propagatedBuildInputs = [ boost catkin libGLU libGL fftw openscenegraph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Ocean library adapted to UWSim. See https://code.google.com/p/osgocean'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
