
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-slam }:
buildRosPackage {
  pname = "ros-kilted-mrpt-graphslam";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_graphslam/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "03e4a9e18259e07bc9aebd992d6b9a24de924d5c307cdcc6fc19fbc3f04b2e39";
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
