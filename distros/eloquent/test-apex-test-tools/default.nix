
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, apex-test-tools }:
buildRosPackage {
  pname = "ros-eloquent-test-apex-test-tools";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_test_tools-release/repository/archive.tar.gz?ref=release/eloquent/test_apex_test_tools/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "9ad467a779b5ddcf557dd10c4142e9ee9b49e172bd0a5702108e651e0d985db2";
  };

  buildType = "ament_cmake";
  checkInputs = [ apex-test-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Test package, which uses things exported by apex_test_tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
