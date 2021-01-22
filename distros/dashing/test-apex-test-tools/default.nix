
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, apex-test-tools }:
buildRosPackage {
  pname = "ros-dashing-test-apex-test-tools";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_test_tools-release/repository/archive.tar.gz?ref=release/dashing/test_apex_test_tools/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "006c6431dda12ec1af3791f8cea08a963e537219e1cdc2f2942f57829dcd93f8";
  };

  buildType = "ament_cmake";
  checkInputs = [ apex-test-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Test package, which uses things exported by apex_test_tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
