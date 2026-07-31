
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-command-gate, autoware-lint-common, autoware-simple-pure-pursuit }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-control";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_control/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "b0d13b2ce8175bc44ba5e788f94377619e9391f7bbd4c057448f82e359f02211";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-command-gate autoware-simple-pure-pursuit ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
