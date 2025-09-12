
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cargo, clang, git }:
buildRosPackage {
  pname = "ros-kilted-zenoh-cpp-vendor";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/kilted/zenoh_cpp_vendor/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "8758cf0a0a9152e0e2bdef0984867b1ed211e1485acbdd05c76befd03a998df5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package cargo clang git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor pkg to install zenoh-cpp";
    license = with lib.licenses; [ asl20 ];
  };
}
