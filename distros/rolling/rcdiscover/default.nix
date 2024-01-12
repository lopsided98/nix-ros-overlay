
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-rcdiscover";
  version = "1.1.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/rolling/rcdiscover/1.1.6-2.tar.gz";
    name = "1.1.6-2.tar.gz";
    sha256 = "d8fef8a8f0e8735f6f2954daa86af7b4e61a68bcc2eb5ec4554e2ff4fb7d7252";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
