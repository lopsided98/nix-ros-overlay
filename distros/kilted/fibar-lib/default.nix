
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, gtest }:
buildRosPackage {
  pname = "ros-kilted-fibar-lib";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fibar_lib-release/archive/release/kilted/fibar_lib/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "23fcd113803a259f5beb4d16249e9411b0e7bbbd84d0915a0f67f28bdc8f5507";
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
