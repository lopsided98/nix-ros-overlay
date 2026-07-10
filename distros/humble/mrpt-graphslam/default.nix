
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-slam }:
buildRosPackage {
  pname = "ros-humble-mrpt-graphslam";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_graphslam/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "5cbf7d5d058e8aa27e7589c2cbfb9953371efb6debda311bb820c91420d0bb5d";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mrpt-gui mrpt-slam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_graphslam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
