
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-core";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_core/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "6ecfd7ded83e86e12ae43b7566462ed0446d3dcbd0ae9b1dd8653043b29875f8";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_core";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
