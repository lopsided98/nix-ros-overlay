
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-sdformat-test-files";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/galactic/sdformat_test_files/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "fcbaeb5ab543a73a6393247cffb800c834ef53220062bde9dd17a24d94855ce4";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Example SDFormat XML files for testing tools using hthis format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
