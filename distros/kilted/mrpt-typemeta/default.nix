
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common }:
buildRosPackage {
  pname = "ros-kilted-mrpt-typemeta";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_typemeta/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "6faf3f6080cb9d4c6d85572c5cf46675398e0dd7248e2f0b924a90371b813880";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_typemeta";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
