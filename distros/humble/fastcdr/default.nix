
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-fastcdr";
  version = "1.0.24-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/humble/fastcdr/1.0.24-2.tar.gz";
    name = "1.0.24-2.tar.gz";
    sha256 = "b8dd46ba2874b8b42b60d16b0e73a72f092b2f5923512dcc8a746f3c30955a08";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
