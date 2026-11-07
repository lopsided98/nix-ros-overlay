
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-int2dds-ffi-vendor";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_int2dds-release/archive/release/humble/int2dds_ffi_vendor/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "67d29c49a69ca25fc5d383fcf23e1d08b3231c3c8b53c32836d3b0ae92a363b9";
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
