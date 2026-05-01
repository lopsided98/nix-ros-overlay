
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-sdformat-test-files";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/lyrical/sdformat_test_files/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "f6f02dc8ccf6f5d6d755374e1f99147b0376dd45c53fe983a3a6a1b253c764c1";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Example SDFormat XML files for testing tools using hthis format.";
    license = with lib.licenses; [ asl20 ];
  };
}
