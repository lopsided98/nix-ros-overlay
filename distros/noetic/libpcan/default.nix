
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-libpcan";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libpcan/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "634d7fe32f5cdda1a70fd01d76ec7538948cf891bf037594f8358eafbf9ea091";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libpcan to use it as a ros dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
