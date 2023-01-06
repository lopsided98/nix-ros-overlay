
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-rolling-zmqpp-vendor";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tier4/zmqpp_vendor-release/archive/release/rolling/zmqpp_vendor/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "f005cd5834c9d18366bca1285168e076040d46aa68f827042cb0ee3eac2b4310";
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
