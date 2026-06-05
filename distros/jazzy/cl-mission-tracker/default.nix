
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-cl-mission-tracker";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_mission_tracker/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "69dcc3b6c848e5164dc19bab654f49fd6c2264041468bd52b826c4e584cbef67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SMACC2 client for mission state and decision tracking";
    license = with lib.licenses; [ asl20 ];
  };
}
