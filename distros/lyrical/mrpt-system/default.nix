
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-containers, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-system";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_system/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "b71c3ba598ad1e3ab0089ecbb3547987e6256579750f9dde37c69da92a6f328c";
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
