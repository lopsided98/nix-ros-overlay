
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-rcdiscover";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/noetic/rcdiscover/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "785cfe918435b1998ff3f646859706eb18dd0bf52e985881c0dedaa426594c8b";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
