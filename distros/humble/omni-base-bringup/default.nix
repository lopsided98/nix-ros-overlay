
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, joy-linux, joy-teleop, launch-pal, omni-base-controller-configuration, omni-base-description, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-humble-omni-base-bringup";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_bringup/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "4b3dcc9e30d96c69bc9e3db98fd9ca8d835b331007de52d5340882fb2acfd512";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator joy-linux joy-teleop launch-pal omni-base-controller-configuration omni-base-description robot-state-publisher twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
