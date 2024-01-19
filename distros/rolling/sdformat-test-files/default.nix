
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-sdformat-test-files";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/rolling/sdformat_test_files/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "fd920008db6128a0d3399f99ac07c5ff60e88505980391f5f7277a3ac5075572";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Example SDFormat XML files for testing tools using hthis format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
