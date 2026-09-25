
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-path-tools";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_path_tools/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "f4d6370054b3d16cd6de3c4215f566b9561e39987f9e5f5ee7f4597ab3ec9a16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filesystem path manipulation and joining utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
