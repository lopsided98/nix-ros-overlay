
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-fastcdr";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/rolling/fastcdr/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "efad3c7b6bc9887fc9b0f480b7f0038704f55d7543010d9070b915ce877a76e5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
