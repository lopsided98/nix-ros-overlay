
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-libpcan";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libpcan/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "078b90c53555b4e0f768a848d7c5b433041d0f0cd88825e35f277c95fda24cd4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package wraps the libpcan to use it as a ros dependency";
    license = with lib.licenses; [ "LGPL" ];
  };
}
