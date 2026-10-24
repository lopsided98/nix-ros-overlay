
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-kinematics, mrpt-maps, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-nav";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_nav/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "7c20c4b67de7a2242d64e97a1c21dd72fec2f6c77884675cf5fa923219e07e8b";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-kinematics mrpt-maps mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_nav";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
