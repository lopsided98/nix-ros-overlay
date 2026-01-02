
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-humble-mola-pose-list";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_pose_list/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "056ba8b1fa6e934e1724364fef224d6608e74c686f8c3ee2e31cf4e9e3ba5b85";
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
