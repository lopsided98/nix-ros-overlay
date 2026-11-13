
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-kinematics, mrpt-maps, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-nav";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_nav/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "8b3e3b946bbbb5d6488ed1878bb429f4f7f3daf7db4911715db32ec3b66a7892";
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
