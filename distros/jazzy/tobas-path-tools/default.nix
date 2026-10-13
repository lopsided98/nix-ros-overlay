
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-path-tools";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_path_tools/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "0af1d997ca51ffbb38006e460b517cde0aff8ea18e9588eba22fc219ec3f9ead";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filesystem path manipulation and joining utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
