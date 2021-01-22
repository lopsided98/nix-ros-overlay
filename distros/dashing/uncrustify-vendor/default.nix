
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, uncrustify }:
buildRosPackage {
  pname = "ros-dashing-uncrustify-vendor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/dashing/uncrustify_vendor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "fbc5a532fc3104cfe46271c8b3a780b9ef5c0adf626667045bc6932ce2564e98";
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
