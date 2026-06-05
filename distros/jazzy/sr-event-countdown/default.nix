
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sr-event-countdown";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sr_event_countdown/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "771ae226583c5a0b83af8052903ea1c37c7f90e88eae289207868ba3d1733ec4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sr_event_countdown package";
    license = with lib.licenses; [ asl20 ];
  };
}
