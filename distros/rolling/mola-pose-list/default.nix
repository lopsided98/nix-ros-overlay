
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-rolling-mola-pose-list";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_pose_list/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "a57f316a0ee6fb573fe5d1a8e206bee8897cddb955c2e1ea3bdf63c43c836095";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libmaps mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library for searchable pose lists";
    license = with lib.licenses; [ gpl3Only ];
  };
}
