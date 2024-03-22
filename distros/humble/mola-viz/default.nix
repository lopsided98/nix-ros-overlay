
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-viz";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_viz/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3c4cd895b1d35cc9074813a7ec96d9f09a07a6433015c5b3eb7ebfca0c539c94";
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
