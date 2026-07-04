
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libfyaml, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-containers";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_containers/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "fca7d6fd46296a714db17e4404ddabddcd4dcf53e28dd29d0ab3a1f218602d7f";
  };

  buildType = "cmake";
  buildInputs = [ cmake libfyaml python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-core mrpt-typemeta ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_containers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
