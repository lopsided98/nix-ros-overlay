
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common }:
buildRosPackage {
  pname = "ros-kilted-mrpt-typemeta";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_typemeta/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "5b1e93c1b07e1d34e43c6502a746d7ce67614551dc98707f5c00d321e43d383b";
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
