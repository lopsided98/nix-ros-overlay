
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-humble-mola-input-rawlog";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_rawlog/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "1e4b2e45a41c1a56ed3536026aad1337c9d699467ba2f000aaf279b15297db5c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MRPT rawlog datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
