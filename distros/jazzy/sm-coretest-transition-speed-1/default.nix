
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-coretest-transition-speed-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_coretest_transition_speed_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "997c8eadfb77aa972c55314a0ad700fc60a3ea746e2fca2fceb76c5c7f58c966";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_coretest_transition_speed_1 package";
    license = with lib.licenses; [ asl20 "MyLicense" ];
  };
}
