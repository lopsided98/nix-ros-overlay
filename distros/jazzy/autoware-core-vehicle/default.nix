
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, robot-state-publisher }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-vehicle";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_vehicle/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "cfb38ab1e296912905a79238ace36fd8c2c260e3e5190ce72c2bc677aa418e18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_vehicle package";
    license = with lib.licenses; [ asl20 ];
  };
}
