
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-launcher";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_launcher/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "5efdf5664504d96b92b4aaa96ccb801cf5387ce9f92742094da0a63fee49cfd5";
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
