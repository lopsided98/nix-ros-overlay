
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-pose-list";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_pose_list/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f34a35994e823a1d4838e5c0cb6e1ca8ac4d2d4bb72dca35841a08ea88139644";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ library for searchable pose lists'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
