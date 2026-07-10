
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libfyaml, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-containers";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_containers/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "63630ef2d12a7be12e84bcd0c8afb18a6b0ce2ece2cb6a7a311aca543dc78366";
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
