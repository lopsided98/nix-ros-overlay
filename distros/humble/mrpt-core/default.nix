
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-core";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_core/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "83ab801a931f9e29ff539589be41f0a2a37e88f165404b0e44e341e7d121aa11";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_core";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
