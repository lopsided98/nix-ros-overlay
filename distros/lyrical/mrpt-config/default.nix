
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libsimpleini-dev, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-config";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_config/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "b63c7eb4ea4304a744e96693b5a85e97182dd981c0c7929bc4f6ef6baf777a20";
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
