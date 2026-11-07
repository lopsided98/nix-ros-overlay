
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cargo, clang, git }:
buildRosPackage {
  pname = "ros-rolling-zenoh-cpp-vendor";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/rolling/zenoh_cpp_vendor/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "fce51e1c7317de314f96a340dd24e749c49d0068221784f1b7ff507278e85d74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package cargo clang git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor pkg to install zenoh-cpp";
    license = with lib.licenses; [ asl20 ];
  };
}
