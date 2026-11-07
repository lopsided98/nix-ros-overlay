
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-int2dds-ffi-vendor";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_int2dds-release/archive/release/jazzy/int2dds_ffi_vendor/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b3c330a00f50c37baa19dfed93c4f8ff1d9fcbdf84db40e67e87665b2c7b653f";
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
