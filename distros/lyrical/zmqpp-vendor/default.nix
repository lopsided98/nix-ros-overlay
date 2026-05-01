
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-lyrical-zmqpp-vendor";
  version = "0.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zmqpp_vendor-release/archive/release/lyrical/zmqpp_vendor/0.0.2-5.tar.gz";
    name = "0.0.2-5.tar.gz";
    sha256 = "f676afc1cd88dafc7fe36b082a4dc7c39423eac0ad2562b86c1178b31a1d830d";
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
