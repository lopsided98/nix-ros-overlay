
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, soccer-vision-2d-msgs, soccer-vision-3d-msgs, soccer-vision-attribute-msgs }:
buildRosPackage {
  pname = "ros-lyrical-soccer-interfaces";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/lyrical/soccer_interfaces/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "254fb42a25374b9e5a4fe7b557399d4fd7fd0a6213c92c2ce5afb2c10504d359";
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
