
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, apex-test-tools }:
buildRosPackage {
  pname = "ros-kilted-test-apex-test-tools";
  version = "0.0.2-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/kilted/test_apex_test_tools/0.0.2-9.tar.gz";
    name = "0.0.2-9.tar.gz";
    sha256 = "1432c62f7afbdaf8814e82bfe859dfced5a27e054a42b26e54317704e524567d";
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
