
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-maps, mrpt-topography, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-slam";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_slam/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "ccc1da2d0947842562ab6eab475908f33ea7eaa36965f2a8e3c9378cc75aacca";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-maps mrpt-topography ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_slam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
