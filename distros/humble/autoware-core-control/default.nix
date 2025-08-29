
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-simple-pure-pursuit }:
buildRosPackage {
  pname = "ros-humble-autoware-core-control";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_control/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "7a95adb445f18314ea8ac0bedbc45b0d55b336cf71f432ac3a99263d3a70e74a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-simple-pure-pursuit ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
