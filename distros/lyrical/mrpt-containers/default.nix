
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-core, mrpt-typemeta, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-containers";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_containers/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "eb01dda5016b689cb19a206e021875daf051a5f11a110e600bb1a4f6531883e1";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-core mrpt-typemeta ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_containers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
