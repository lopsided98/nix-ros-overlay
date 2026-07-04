
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-expr";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_expr/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "3cefb9dd80829ad172fc4f07ca1cf502bb2167285c32e729f26f69b4768dcdcf";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_expr";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
