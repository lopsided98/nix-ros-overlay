
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, uncrustify }:
buildRosPackage {
  pname = "ros-kilted-uncrustify-vendor";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/kilted/uncrustify_vendor/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "6039bfc5a2d83dec3558e2b5ac729e01e567928aecbdf1ae616ea8e8b060b1f3";
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
