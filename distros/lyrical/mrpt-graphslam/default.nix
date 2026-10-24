
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-slam }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-graphslam";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_graphslam/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "92e8b27097a645c0744c6a6227b77bd2a224f97f59112213e6f04a195426ded9";
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
