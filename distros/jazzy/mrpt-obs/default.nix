
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-tfest, mrpt-viz, python3, python3Packages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-obs";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_obs/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "fd14442e7e79a3a10c0370fa7f26bd53945a24bdf6e6732c43b9575d7455acb5";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-tfest mrpt-viz tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_obs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
