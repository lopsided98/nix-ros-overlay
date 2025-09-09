
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-ament-nodl";
  version = "0.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/kilted/ament_nodl/0.1.0-7.tar.gz";
    name = "0.1.0-7.tar.gz";
    sha256 = "e590c16f799eea635c4a0b4cf05f7d99ec368ceba70e9e01c483a398f05c2686";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ament extension for exporting NoDL .xml files";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
