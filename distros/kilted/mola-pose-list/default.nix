
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-maps, mrpt-poses }:
buildRosPackage {
  pname = "ros-kilted-mola-pose-list";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_pose_list/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "7d7fca0b5bcc416a5d0b588168f5f5f33798ec04e42b8f9fd7b6d84ad7766cb9";
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
