
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-fastcdr";
  version = "1.0.20-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/galactic/fastcdr/1.0.20-3.tar.gz";
    name = "1.0.20-3.tar.gz";
    sha256 = "b188fd74b52365f136934848023e3818e8d392242f06fa944a4e72b956a32412";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
