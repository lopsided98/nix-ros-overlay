
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-iron-heaphook";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/iron/heaphook/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4b48120f9fb28de1a36d0e5d75af7192d9eadcf301cdc9e829df694053eb5e40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Replace all the dynamic heap allocation functions by LD_PRELOAD'';
    license = with lib.licenses; [ asl20 ];
  };
}
