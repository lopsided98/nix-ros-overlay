
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-sdformat-test-files";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/rolling/sdformat_test_files/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f719291a3123cd92e2649c2f3af901d1882b17a3fe45d8f0e6853ef1726942ac";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Example SDFormat XML files for testing tools using hthis format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
