
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-int2dds-ffi-vendor";
  version = "0.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_int2dds-release/archive/release/humble/int2dds_ffi_vendor/0.1.4-2.tar.gz";
    name = "0.1.4-2.tar.gz";
    sha256 = "da1c51fec25429af78b1e32b69224636ba25dbbca8138f8ec59b4bb43226ccb3";
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
