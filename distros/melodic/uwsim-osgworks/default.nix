
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, libGL, libGLU, openscenegraph }:
buildRosPackage {
  pname = "ros-melodic-uwsim-osgworks";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_osgworks-release/archive/release/melodic/uwsim_osgworks/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "c1c8871ee6ee12995a6964a45f8a46d2a347e8c9871bec8d1e573850576e01d9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin libGL libGLU openscenegraph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OSG Works library adapted to UWSim. See https://code.google.com/p/osgworks'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
