
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, joy, joy-teleop, launch-pal, omni-base-controller-configuration, omni-base-description, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-humble-omni-base-bringup";
  version = "2.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_robot-release/archive/release/humble/omni_base_bringup/2.18.0-1.tar.gz";
    name = "2.18.0-1.tar.gz";
    sha256 = "e1c854a7299633783724f91d7963d02efbbec81511b5eff61b5b904b9b886905";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator joy joy-teleop launch-pal omni-base-controller-configuration omni-base-description robot-state-publisher twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
