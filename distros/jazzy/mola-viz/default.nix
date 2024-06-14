
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-jazzy-mola-viz";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_viz/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "9f5100b122f725bde87ee47472949b5a02bc46496bd77abb899627ab155c8846";
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
