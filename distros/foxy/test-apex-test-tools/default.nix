
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, apex-test-tools }:
buildRosPackage {
  pname = "ros-foxy-test-apex-test-tools";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_test_tools-release/repository/archive.tar.gz?ref=release/foxy/test_apex_test_tools/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "b7fae88aa4a1d2e3e1c92397759ecfe73001fad1db92f258a5afe27182316f11";
  };

  buildType = "ament_cmake";
  checkInputs = [ apex-test-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Test package, which uses things exported by apex_test_tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
