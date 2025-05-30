
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cargo, clang, git }:
buildRosPackage {
  pname = "ros-kilted-zenoh-cpp-vendor";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/kilted/zenoh_cpp_vendor/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "495b30d1edbd12307a3a767cb2c36ef2855612ceefde4984d4b3d5db09582acf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package cargo clang git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor pkg to install zenoh-cpp";
    license = with lib.licenses; [ asl20 ];
  };
}
