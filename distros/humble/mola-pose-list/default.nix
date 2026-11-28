
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-maps, mrpt-poses }:
buildRosPackage {
  pname = "ros-humble-mola-pose-list";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_pose_list/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "ca2e8ad02c1609967b5cab9d8dffcc19e1f49a12d09275b1bc65293e6ad64f5f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-maps mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library for searchable pose lists";
    license = with lib.licenses; [ gpl3Only ];
  };
}
