
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-launcher";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_launcher/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "e9f2e57dfe118476d15a517a892ce2fb59b08c3a8785a98077f20b7ad92bd070";
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
