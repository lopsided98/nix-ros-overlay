
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, soccer-vision-2d-msgs, soccer-vision-3d-msgs, soccer-vision-attribute-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-interfaces";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/rolling/soccer_interfaces/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "1bc068c844d0dbaa0820745ffab04e4cac8e8215d6b4af01ddeedae97225c530";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ soccer-vision-2d-msgs soccer-vision-3d-msgs soccer-vision-attribute-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for soccer-related interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
