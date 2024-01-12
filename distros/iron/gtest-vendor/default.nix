
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-gtest-vendor";
  version = "1.10.9005-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/iron/gtest_vendor/1.10.9005-2.tar.gz";
    name = "1.10.9005-2.tar.gz";
    sha256 = "a72b8c467206144ae91d7f07a27941d4cb7f1615e5fa6721e498b35d53c9079b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
