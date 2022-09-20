
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-fastcdr";
  version = "1.0.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/foxy/fastcdr/1.0.13-1.tar.gz";
    name = "1.0.13-1.tar.gz";
    sha256 = "7bfa6843defd50ed19c9c08ca7d13959b60be5aff12ffc40edd5b7e50daf411c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
