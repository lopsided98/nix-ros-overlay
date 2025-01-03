
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, apex-test-tools }:
buildRosPackage {
  pname = "ros-jazzy-test-apex-test-tools";
  version = "0.0.2-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/jazzy/test_apex_test_tools/0.0.2-9.tar.gz";
    name = "0.0.2-9.tar.gz";
    sha256 = "35acf8809e44b7a0efe3cc39a9ef1d56c6f24525e52b50139e82dd0fc0e7e54a";
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
