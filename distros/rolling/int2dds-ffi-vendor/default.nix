
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-int2dds-ffi-vendor";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_int2dds-release/archive/release/rolling/int2dds_ffi_vendor/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "911d4d45872667dcf65c2fe2cfcee3684aa8b78271580fb6861ff27890f72e11";
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
