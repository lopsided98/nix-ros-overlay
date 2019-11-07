
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openscenegraph, libGL, libGLU, cmake, fftw }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgocean";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgocean-release/archive/release/melodic/uwsim_osgocean/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "5fdb580de5268f922f5106b976d0cd18a7ebae834f4bbcca9fdfcb45ac0b261f";
  };

  buildType = "cmake";
  buildInputs = [ boost openscenegraph libGLU libGL fftw ];
  propagatedBuildInputs = [ boost catkin openscenegraph libGLU libGL fftw ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Ocean library adapted to UWSim. See https://code.google.com/p/osgocean'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
