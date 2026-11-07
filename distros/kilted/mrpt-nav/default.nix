
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-kinematics, mrpt-maps, mrpt-viz, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-nav";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_nav/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "3bed8343b0e86145f053831860da25da5b87c0096d85b9d2462dee23e7bf5afd";
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
