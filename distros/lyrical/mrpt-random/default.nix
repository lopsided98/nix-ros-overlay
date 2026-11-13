
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-random";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_random/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "6cb0447695fca002f47d4a94f5854f222b95c08bf4ec0a80747302aab1f3c880";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_random";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
