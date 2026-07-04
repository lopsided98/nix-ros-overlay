
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libsimpleini-dev, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-config";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_config/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "7a7e330c16c74454735b9975e9d2e96a9678568b58712ac53d21ad50e1a34061";
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
