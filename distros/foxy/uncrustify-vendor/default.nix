
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, uncrustify }:
buildRosPackage {
  pname = "ros-foxy-uncrustify-vendor";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/foxy/uncrustify_vendor/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e43689110e4666ef4ca2e722c76dfd584aedc5d759a5bfdeac7ce33f61cbd9cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ uncrustify ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around uncrustify, providing nothing but a dependency on uncrustify, on some systems.
    On others, it provides an ExternalProject build of uncrustify.'';
    license = with lib.licenses; [ asl20 "GPL-2.0-only" ];
  };
}
