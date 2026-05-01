
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, uncrustify }:
buildRosPackage {
  pname = "ros-lyrical-uncrustify-vendor";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/lyrical/uncrustify_vendor/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "98d89c71d63e9aab066b7fc35e371177980515aa3ee57038817b046b0e2da52e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ uncrustify ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around uncrustify, providing nothing but a dependency on uncrustify, on some systems.
    On others, it provides an ExternalProject build of uncrustify.";
    license = with lib.licenses; [ asl20 "GPL-2.0-only" ];
  };
}
