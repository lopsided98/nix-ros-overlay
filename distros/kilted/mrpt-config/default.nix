
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-config";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_config/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "2784911cd5f619202ec914c0b9d6c1c230baf0282325c985087f8ac5dad6544a";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ icu mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
