
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-topography";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_topography/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "856037720a9e0cad2eefeee23bf2f95d34886399725b5f6cece6a716d7405194";
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
