
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-viz";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_viz/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "90cec24d14f1e794ed8bfe0e032d4dc6e1b37efaeb68f49600dc6a240b6ed50a";
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
