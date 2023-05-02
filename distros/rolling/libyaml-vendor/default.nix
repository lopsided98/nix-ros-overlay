
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, git, libyaml, performance-test-fixture, pkg-config, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-libyaml-vendor";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/rolling/libyaml_vendor/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "a07a0791678c41a0a0f672e44bf8bfe29a2ff1d552e9acf036e86aadae906ea5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture rcpputils rcutils ];
  propagatedBuildInputs = [ libyaml pkg-config ];
  nativeBuildInputs = [ ament-cmake git pkg-config ];

  meta = {
    description = ''Vendored version of libyaml.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
