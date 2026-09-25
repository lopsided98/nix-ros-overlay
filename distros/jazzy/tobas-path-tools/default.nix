
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-path-tools";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_path_tools/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "e4b76fc6839668045e32058987e17a7d2d76e747d2d34f9192ccee5fd0d41988";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filesystem path manipulation and joining utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
