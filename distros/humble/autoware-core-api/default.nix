
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-adaptors, autoware-cmake, autoware-default-adapi, autoware-lint-common }:
buildRosPackage {
  pname = "ros-humble-autoware-core-api";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_api/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "732844582a95709f66cd7192d6af5f00d199a2cd5b9ea1ae74526e9dce3dc2a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-adaptors autoware-default-adapi ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_api package";
    license = with lib.licenses; [ asl20 ];
  };
}
