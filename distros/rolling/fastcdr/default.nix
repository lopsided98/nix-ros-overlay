
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-fastcdr";
  version = "1.0.27-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/rolling/fastcdr/1.0.27-2.tar.gz";
    name = "1.0.27-2.tar.gz";
    sha256 = "e1d4050d0b1817ff3d438f0a240acbf85447c82b2cc16b8f7b2125368881fc55";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
