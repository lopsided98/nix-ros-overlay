
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-keyboard, tobas-keyboard-teleop }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cui";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cui/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "c040fe48dc85c9745ba559f838f9740657b5943cf620e16b05e7e7ecd9469521";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-keyboard tobas-keyboard-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas command-line and keyboard user interfaces.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
