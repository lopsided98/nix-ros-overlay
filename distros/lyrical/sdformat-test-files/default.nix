
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-sdformat-test-files";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/lyrical/sdformat_test_files/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "a0b2f22cb0b0a1a95bd16b8091a11ff3524cbf6b1ee6d398f1ef24e84776de2a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Example SDFormat XML files for testing tools using hthis format.";
    license = with lib.licenses; [ asl20 ];
  };
}
