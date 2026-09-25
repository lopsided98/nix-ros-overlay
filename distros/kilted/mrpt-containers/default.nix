
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libfyaml, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-containers";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_containers/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "ce6908b1df054005bc2a9c8d46acac9e740d491796fd451197006db4a8091047";
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
