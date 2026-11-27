
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h }:
buildRosPackage {
  pname = "ros-jazzy-tobas-version";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_version/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "2ca696dd28b67f20edee683e7d990ca270f376312523d57dbf0aa3f0f73133f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Compile-time and runtime access to the Tobas software version.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
