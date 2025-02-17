
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cargo, clang, git }:
buildRosPackage {
  pname = "ros-humble-zenoh-cpp-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/humble/zenoh_cpp_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b6c53838563a7ee675f86ad1cb92766dd1ac9c0ea1d21f2b00cb23ed731a7518";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package cargo clang git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor pkg to install zenoh-cpp";
    license = with lib.licenses; [ asl20 ];
  };
}
