
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joy-linux, joy-teleop, launch-pal, omni-base-controller-configuration, omni-base-description, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-humble-omni-base-bringup";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_bringup/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "2db9d7ad51c1f069246b67771132e77c967f7a545b26ee1e274c2f71c0c0b654";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joy-linux joy-teleop launch-pal omni-base-controller-configuration omni-base-description robot-state-publisher twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
