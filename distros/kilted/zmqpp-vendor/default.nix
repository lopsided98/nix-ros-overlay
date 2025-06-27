
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-kilted-zmqpp-vendor";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zmqpp_vendor-release/archive/release/kilted/zmqpp_vendor/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "288bba8c339946d12e6920bd6f884908c254e777f78b6c41fd0c6ee3468ee32d";
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
