
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-int2dds-ffi-vendor";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/IntellectusCorp/rmw_int2dds-release/archive/release/humble/int2dds_ffi_vendor/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "abda23c34708aafb6af5cd204510d29f030467beb2a31f67af2858f5695f7dac";
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
