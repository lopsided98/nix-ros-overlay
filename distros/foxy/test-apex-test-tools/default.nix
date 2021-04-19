
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, apex-test-tools }:
buildRosPackage {
  pname = "ros-foxy-test-apex-test-tools";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_test_tools-release/-/archive/release/foxy/test_apex_test_tools/0.0.2-1/apex_test_tools-release-release-foxy-test_apex_test_tools-0.0.2-1.tar.gz";
    name = "apex_test_tools-release-release-foxy-test_apex_test_tools-0.0.2-1.tar.gz";
    sha256 = "275623d9706e2f131b95b40c5f3b082069078ece9a0bb76f2dfc3e4359cf763d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto apex-test-tools ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Test package, which uses things exported by apex_test_tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
