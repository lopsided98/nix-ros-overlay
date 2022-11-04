
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-foxy-zmqpp-vendor";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/tier4/zmqpp_vendor-release/archive/release/foxy/zmqpp_vendor/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "efe0919a69f130328417e4099658b10219ecccfb59bad44d7b8183e4654ac209";
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
