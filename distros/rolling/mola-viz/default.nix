
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-viz";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_viz/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "5bf2d30f641b1a357f7fb647fbc1080ce719544f36cea69c5f17d184388823e9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
