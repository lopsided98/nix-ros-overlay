
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-rolling-zmqpp-vendor";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zmqpp_vendor-release/archive/release/rolling/zmqpp_vendor/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "9eba094db9edd6e464673b577dd6385cbaebb002065003fa0f9671065a861fa3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Vendor package for zmqpp";
    license = with lib.licenses; [ asl20 "Mozilla-Public-License-2.0" ];
  };
}
