
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, libGL, libGLU, openscenegraph }:
buildRosPackage {
  pname = "ros-kinetic-uwsim-osgworks";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgworks-release/archive/release/kinetic/uwsim_osgworks/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "2a509179c47ceaf57e6bf4b620eaf1bb70f5014dde5fe6925c3cd82923e61c68";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin libGL libGLU openscenegraph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Works library adapted to UWSim. See https://code.google.com/p/osgworks'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
