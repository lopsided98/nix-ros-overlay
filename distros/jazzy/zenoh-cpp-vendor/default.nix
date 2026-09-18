
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cargo, clang, git }:
buildRosPackage {
  pname = "ros-jazzy-zenoh-cpp-vendor";
  version = "0.2.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/jazzy/zenoh_cpp_vendor/0.2.11-1.tar.gz";
    name = "0.2.11-1.tar.gz";
    sha256 = "75b1a5e1b459fde6d0eba125ec8bf6e45f41350e942e559668d39bb3b1e99673";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package cargo clang git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor pkg to install zenoh-cpp";
    license = with lib.licenses; [ asl20 ];
  };
}
