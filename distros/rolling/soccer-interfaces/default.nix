
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, soccer-vision-2d-msgs, soccer-vision-3d-msgs, soccer-vision-attribute-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-interfaces";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/rolling/soccer_interfaces/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "53bcc7b68ff738d4802cdd4bd32f66f12267f3eb60c3494769a2f6a33ffd1a7e";
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
