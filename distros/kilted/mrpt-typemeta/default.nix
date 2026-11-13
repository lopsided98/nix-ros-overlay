
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common }:
buildRosPackage {
  pname = "ros-kilted-mrpt-typemeta";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_typemeta/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "dfcb9b0e52a13073f8c44647f4dd4927fab8405d114f2c6790bb04e34ff16afd";
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
