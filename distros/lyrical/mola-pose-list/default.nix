
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-maps, mrpt-poses }:
buildRosPackage {
  pname = "ros-lyrical-mola-pose-list";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_pose_list/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "aea779f7695be9836861d162882884973bda74eb0cde5c6106bade42e1dad8cc";
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
