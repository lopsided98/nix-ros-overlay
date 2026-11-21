
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-maps, mrpt-poses }:
buildRosPackage {
  pname = "ros-rolling-mola-pose-list";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_pose_list/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "2d4f32242a051b84f7ca268f93af47c009b314fbf184d7998c15a509033fe297";
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
