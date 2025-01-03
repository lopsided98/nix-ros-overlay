
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-sdformat-test-files";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/rolling/sdformat_test_files/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "387c10d875dbf35da8b35e8358db6714fac10e2b5e5239827dd992ee05ba7b2e";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Example SDFormat XML files for testing tools using hthis format.";
    license = with lib.licenses; [ asl20 ];
  };
}
