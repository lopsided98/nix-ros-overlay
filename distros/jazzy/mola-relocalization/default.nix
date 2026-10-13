
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt-maps, mrpt-obs }:
buildRosPackage {
  pname = "ros-jazzy-mola-relocalization";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_relocalization/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "ab2b1d95cbaf7c3fc7ea2ea27e967071fca9bfcf56cfa72485a7085cde31686b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ mola-test-datasets ];
  propagatedBuildInputs = [ mola-common mola-pose-list mp2p-icp mrpt-maps mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library with algorithms for relocalization, global localization, or pose estimation given a large initial uncertainty";
    license = with lib.licenses; [ gpl3Only ];
  };
}
