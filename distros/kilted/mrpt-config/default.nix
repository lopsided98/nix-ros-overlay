
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libsimpleini-dev, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-config";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_config/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "37f28407cde81870c5b36e427f130463d1abed90c1702e72b8cc99bf4e7c4c42";
  };

  buildType = "cmake";
  buildInputs = [ _unresolved_libsimpleini-dev cmake icu python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
