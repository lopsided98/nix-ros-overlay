
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-galactic-ament-nodl";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/galactic/ament_nodl/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "14ee99d1ac40eb2b8e921aed943e6ab6d8ef0b13cdb90dc6c6bbe95506cea0d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Ament extension for exporting NoDL .xml files'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
