
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, gtest }:
buildRosPackage {
  pname = "ros-rolling-fibar-lib";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fibar_lib-release/archive/release/rolling/fibar_lib/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "2bd15c101f0336e5274a58c80600cf6cc21a875777694e52551020d9917078b7";
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
