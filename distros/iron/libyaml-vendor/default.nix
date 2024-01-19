
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, git, libyaml, performance-test-fixture, pkg-config, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-iron-libyaml-vendor";
  version = "1.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/iron/libyaml_vendor/1.5.0-3.tar.gz";
    name = "1.5.0-3.tar.gz";
    sha256 = "aa58436233acb7963aa18c7dac114aca89de3c9fa3440895ec35ddf536cf0946";
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
