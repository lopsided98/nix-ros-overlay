
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-random";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_random/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "abb74c03fa0126dd64da1adad4987590ad59eed673b86e10922eaa18de944ebd";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_random";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
