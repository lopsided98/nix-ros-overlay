
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-sdformat-test-files";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/iron/sdformat_test_files/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "266bbc3882e3af190664128af6797d435361d1b7a09612cd6a82088eca1864d4";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Example SDFormat XML files for testing tools using hthis format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
