
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, libGL, libGLU, mrpt-img, mrpt-poses, mrpt-viz }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-opengl";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_opengl/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "80ccf8fe40b27c69d60b51dc4b7159bbf03cecca2aee856c4877c984a3bc8822";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ libGL libGLU mrpt-img mrpt-poses mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_opengl";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
