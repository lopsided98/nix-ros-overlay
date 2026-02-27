
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-zenoh-cpp }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-common";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_common/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "4ab85751938d6d3c60a0d80cbad18c730bcedae7945f3cc9c941b27a15b20360";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-control clearpath-description clearpath-generator-common rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-zenoh-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
