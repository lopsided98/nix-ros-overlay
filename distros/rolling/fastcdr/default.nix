
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-fastcdr";
  version = "1.0.24-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/rolling/fastcdr/1.0.24-2.tar.gz";
    name = "1.0.24-2.tar.gz";
    sha256 = "abd9ad1d4b1a7644bc9f27d06c16a79c79215955ed31715242187c11b9418a7c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
