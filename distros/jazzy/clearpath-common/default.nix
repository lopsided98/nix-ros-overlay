
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-zenoh-cpp }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-common";
  version = "2.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_common/2.9.4-1.tar.gz";
    name = "2.9.4-1.tar.gz";
    sha256 = "330d45260aeaa8d921338cf5e4552a872a785d93f6c8bf67c7b32a4360767da5";
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
