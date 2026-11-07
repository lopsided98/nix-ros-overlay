
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-slam }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-graphslam";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_graphslam/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "9f3568eb872bfec0e2de677922eb6b32fc0b41d5ecde18137358b4a56ce3bffd";
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
