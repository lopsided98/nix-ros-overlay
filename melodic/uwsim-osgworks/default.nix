
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openscenegraph, libGL, libGLU, cmake }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgworks";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgworks-release/archive/release/melodic/uwsim_osgworks/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "c8c0c34d3361a198d0dcc1688a35131f44d8cbb4f93c8aaead74e8e9c69bb8e0";
  };

  buildType = "cmake";
  buildInputs = [ libGLU libGL openscenegraph boost ];
  propagatedBuildInputs = [ boost catkin openscenegraph libGLU libGL ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Works library adapted to UWSim. See https://code.google.com/p/osgworks'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
