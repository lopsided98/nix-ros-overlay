
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, apex-test-tools }:
buildRosPackage {
  pname = "ros-lyrical-test-apex-test-tools";
  version = "0.0.2-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/lyrical/test_apex_test_tools/0.0.2-10.tar.gz";
    name = "0.0.2-10.tar.gz";
    sha256 = "22064a8ba11b0f1f3acb9ae4d5f2e88cb8104ec28aa3033e01fd66bf4623313a";
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
