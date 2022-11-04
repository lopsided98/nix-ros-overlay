
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-ruckig";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/noetic/ruckig/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "4a2c3b585dc2ec8d9af8c6ae46197e4344f214771c7d55c7c7fb3faca8690329";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
