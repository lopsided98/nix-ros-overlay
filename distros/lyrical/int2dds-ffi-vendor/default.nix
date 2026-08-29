
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-int2dds-ffi-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_int2dds-release/archive/release/lyrical/int2dds_ffi_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "66192a42dcb0683502983be81d4b8acb1489196cbdc6371e59c735a08fcff09f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package that fetches the prebuilt int2DDS FFI library
    (shared library + C header) for the host platform and exposes it to
    the ROS 2 build as an imported CMake target. Used by rmw_int2dds_cpp.";
    license = with lib.licenses; [ asl20 ];
  };
}
