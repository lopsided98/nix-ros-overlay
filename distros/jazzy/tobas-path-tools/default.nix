
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-path-tools";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_path_tools/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "9c2eb43f4859b22b257810dc9f965149b3d567a5064b757af4f88d32227f6094";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filesystem path manipulation and joining utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
