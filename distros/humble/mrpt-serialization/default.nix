
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-rtti, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-serialization";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_serialization/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "78b4797c0b1f5da0026434b9494354ca2b27a2134220b662908a2473417c0257";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-rtti ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_serialization";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
