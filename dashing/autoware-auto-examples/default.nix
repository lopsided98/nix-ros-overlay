
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage rec {
  pname = "ros-dashing-autoware-auto-examples";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_examples/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "42136dabe1fa630284c41d79a742afacdbd5854e52c489b1abe68411cfd63ad5";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples and configuration files for Autoware.Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
