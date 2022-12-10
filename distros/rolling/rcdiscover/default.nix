
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-rcdiscover";
  version = "1.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/rolling/rcdiscover/1.1.4-2.tar.gz";
    name = "1.1.4-2.tar.gz";
    sha256 = "735fbae4158e70d399ec074bc7a667ca6b0107a5dd6e0bcce7e3a3a5dcaeaebe";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
