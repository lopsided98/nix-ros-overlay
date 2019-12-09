
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libGLU, cmake, libGL, fftw, openscenegraph }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgocean";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgocean-release/archive/release/melodic/uwsim_osgocean/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "f1fa072efeefdae435dbad0e4e11364da90dd778018d0c83b5d183a0fe587cc4";
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
