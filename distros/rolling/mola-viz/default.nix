
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-viz";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_viz/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "948f802286f774e70b460c7d26fd3f0b0a285705daa089c8a78c3f09d1f6534a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''GUI for MOLA'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
