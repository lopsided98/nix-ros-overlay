
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-kilted-mola-pose-list";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_pose_list/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "7c5d3f67483c3c9e3614fcfa73ddc0a78e7412112fbbe1e0bea04fbbcc8fe969";
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
