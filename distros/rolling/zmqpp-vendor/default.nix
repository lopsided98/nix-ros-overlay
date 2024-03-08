
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-rolling-zmqpp-vendor";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zmqpp_vendor-release/archive/release/rolling/zmqpp_vendor/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "79b44550d29e052ae9ef7854cd72e4d5fa6db66af70106d85abf70ce05b0907d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Vendor package for zmqpp'';
    license = with lib.licenses; [ asl20 "Mozilla-Public-License-2.0" ];
  };
}
