
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cargo, clang, git }:
buildRosPackage {
  pname = "ros-lyrical-zenoh-cpp-vendor";
  version = "0.10.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/lyrical/zenoh_cpp_vendor/0.10.7-1.tar.gz";
    name = "0.10.7-1.tar.gz";
    sha256 = "63d5132c53c9e18791b91ca2d7aea8d9d1e93f03fb9bee4d65ebdf24ac6a6e24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package cargo clang git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor pkg to install zenoh-cpp";
    license = with lib.licenses; [ asl20 ];
  };
}
