
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-launcher";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_launcher/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "798a15acab250fd5bb4ec53d3eb703eb9254f3d03e8171d5a201fdf8c973c7a9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Launcher app for MOLA systems'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
