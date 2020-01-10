
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, uncrustify }:
buildRosPackage {
  pname = "ros-crystal-uncrustify-vendor";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/crystal/uncrustify_vendor/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "e81702fda146eb9e430cb382a925c852d768aee7f801fe35df14c91cc2efbed5";
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
