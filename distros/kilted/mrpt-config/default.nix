
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages, simpleini }:
buildRosPackage {
  pname = "ros-kilted-mrpt-config";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_config/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "17c3b027e2632bc206d864e045733488e3f0780535e924fbce3bbf749f73124f";
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
