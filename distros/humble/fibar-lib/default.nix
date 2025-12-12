
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, gtest }:
buildRosPackage {
  pname = "ros-humble-fibar-lib";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fibar_lib-release/archive/release/humble/fibar_lib/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "4aaf45765c20543f7329d32694638f60e6310d8fdee594e54437b6896c8f125d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ clang ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "FIBAR event image reconstruction library";
    license = with lib.licenses; [ asl20 ];
  };
}
