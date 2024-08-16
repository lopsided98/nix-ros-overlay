
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joy-linux, joy-teleop, launch-pal, omni-base-controller-configuration, omni-base-description, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-humble-omni-base-bringup";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_bringup/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "e3671d16e3e668a7aa57ac9aa0a36e5177532223540420f85189bddfd8452603";
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
