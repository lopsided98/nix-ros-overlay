
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2, smacc2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sr-all-events-go";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sr_all_events_go/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "1423dbdc343f838e152e4d26f1e3049fc1997173a5e48a6d6e92eaf7eaf4a0ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 smacc2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sr_all_events_go package";
    license = with lib.licenses; [ asl20 ];
  };
}
