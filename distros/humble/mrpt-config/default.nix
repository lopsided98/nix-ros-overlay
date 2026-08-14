
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages, simpleini }:
buildRosPackage {
  pname = "ros-humble-mrpt-config";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_config/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "cc5399a85547520fcdf2f43f37084ab5f805fe65b1b8ae3208f69033b570fd07";
  };

  buildType = "cmake";
  buildInputs = [ cmake icu python3 python3Packages.pybind11 simpleini ];
  propagatedBuildInputs = [ mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
