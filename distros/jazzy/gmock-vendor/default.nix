
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-jazzy-gmock-vendor";
  version = "1.14.9000-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/jazzy/gmock_vendor/1.14.9000-2.tar.gz";
    name = "1.14.9000-2.tar.gz";
    sha256 = "06fbf4e4f1c7ff546bceed0ceb22435de46786cc32d09ad010c8a208f732560f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleMock.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
