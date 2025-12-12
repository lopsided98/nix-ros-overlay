
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-fastcdr";
  version = "1.0.29-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/humble/fastcdr/1.0.29-1.tar.gz";
    name = "1.0.29-1.tar.gz";
    sha256 = "f877c55fb1835df373e3448da7dbf4a0de75b20c29c893567c8d689506ca9fe0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CDR serialization implementation.";
    license = with lib.licenses; [ asl20 ];
  };
}
