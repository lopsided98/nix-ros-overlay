
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-topography";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_topography/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "50e1f1b6e037f4f12cab9a70090fd2e42e06ed610443fc18b1343a5717c3fc34";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-common mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_topography";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
