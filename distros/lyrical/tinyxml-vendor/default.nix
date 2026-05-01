
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-lyrical-tinyxml-vendor";
  version = "0.10.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/lyrical/tinyxml_vendor/0.10.0-4.tar.gz";
    name = "0.10.0-4.tar.gz";
    sha256 = "5a81c12c81bc9616effe83f56feae1717de546b39eea295f8633a3605cc545ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake shim over the tinxml library.";
    license = with lib.licenses; [ asl20 ];
  };
}
