
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, apex-test-tools }:
buildRosPackage {
  pname = "ros-rolling-test-apex-test-tools";
  version = "0.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/rolling/test_apex_test_tools/0.0.2-5.tar.gz";
    name = "0.0.2-5.tar.gz";
    sha256 = "a5befaa9cd938deab9e04f345a492114884a5ba6a4cf399ea9d2c1dd7d9f51b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto apex-test-tools ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Test package, which uses things exported by apex_test_tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
