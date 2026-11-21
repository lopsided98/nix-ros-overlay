
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-slam, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-graphslam";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_graphslam/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "bbb7bebdff3360afa3a5819a5ed2d2ebec4bcaa31d08c80cdc5972c0c4e6cc9a";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-gui mrpt-slam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_graphslam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
