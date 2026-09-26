
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-topography";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_topography/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "56230c315c1aa5edd177a9bf79c6a16b670c668bd1ff759cb0060f0958081872";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-common mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_topography";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
