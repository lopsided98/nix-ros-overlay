
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-core, tobas-examples, tobas-external, tobas-gui }:
buildRosPackage {
  pname = "ros-jazzy-tobas";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "8980c79404b5245ab866f455779a427285a1f38993a67c4fce4efae9271721b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-core tobas-examples tobas-external tobas-gui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for the complete Tobas flight-control software stack.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
