
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-humble-mola-pose-list";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_pose_list/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "73a167359c4035052b0b42da01ad7816adfaacf5804538c09530126335098e31";
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
