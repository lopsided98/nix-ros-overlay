
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, apex-test-tools }:
buildRosPackage {
  pname = "ros-dashing-test-apex-test-tools";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_test_tools-release/-/archive/release/dashing/test_apex_test_tools/0.0.1-1/apex_test_tools-release-release-dashing-test_apex_test_tools-0.0.1-1.tar.gz";
    name = "apex_test_tools-release-release-dashing-test_apex_test_tools-0.0.1-1.tar.gz";
    sha256 = "6aac93a88a3991fee613b6c89aa46d83316eb878ad5478bd4f6f6ffa16c6b645";
  };

  buildType = "ament_cmake";
  checkInputs = [ apex-test-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Test package, which uses things exported by apex_test_tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
