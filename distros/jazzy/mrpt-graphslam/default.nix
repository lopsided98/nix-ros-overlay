
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-slam }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-graphslam";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_graphslam/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "ffd474df9a7a9c632c4f5532c2565fa8aa95c05bcd3dcbf40cc815a7e0ad5574";
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
