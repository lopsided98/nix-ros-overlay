
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-sdformat-test-files";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/rolling/sdformat_test_files/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "200fb43ae4989614a07943b3767a56616f5ea4b83fcdb6ada7d55440d7b7afb6";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Example SDFormat XML files for testing tools using hthis format.";
    license = with lib.licenses; [ asl20 ];
  };
}
