
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, uncrustify }:
buildRosPackage {
  pname = "ros-eloquent-uncrustify-vendor";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/eloquent/uncrustify_vendor/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "b487e3a8a736a6374d2a1870634a34f99a2c36a4c7e733a2602f3fe2d666f102";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ uncrustify ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around uncrustify, providing nothing but a dependency on uncrustify, on some systems.
    On others, it provides an ExternalProject build of uncrustify.'';
    license = with lib.licenses; [ asl20 gpl2 ];
  };
}
