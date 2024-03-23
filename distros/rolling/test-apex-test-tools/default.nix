
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, apex-test-tools }:
buildRosPackage {
  pname = "ros-rolling-test-apex-test-tools";
  version = "0.0.2-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/rolling/test_apex_test_tools/0.0.2-8.tar.gz";
    name = "0.0.2-8.tar.gz";
    sha256 = "17206f05e1bf6a4610c75ed158b3735d5c2aeb7edf22b1542114dd73e6603c86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto apex-test-tools ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Test package, which uses things exported by apex_test_tools";
    license = with lib.licenses; [ asl20 ];
  };
}
