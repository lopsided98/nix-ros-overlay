
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-libyaml-vendor";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/crystal/libyaml_vendor/1.0.0-0.tar.gz;
    sha256 = "54515207095b2974e152995adc92a9d0bf88b885336bbefcc26ca404af305188";
  };

  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libyaml, provides the last version (1.8.0 rc) that ships with a CMake module'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
