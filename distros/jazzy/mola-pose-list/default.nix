
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-jazzy-mola-pose-list";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_pose_list/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "067b0b25038e504214fd52728d1f68fb0573d5fa162cb7da8ed9603dff051cbe";
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
