
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-libyaml-vendor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/dashing/libyaml_vendor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e9e1995ff5a0dadad4458b07afd03a14758faad3173418ba4bd5cbe60e689fd2";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libyaml, provides the last version (1.8.0 rc) that ships with a CMake module'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
