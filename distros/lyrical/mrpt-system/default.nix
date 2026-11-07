
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-containers, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-system";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_system/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "4efc91e02db47ac047c3d8db5b3762fcbd81a9fe6c90d014d2fbcf43fd538832";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-containers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_system";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
