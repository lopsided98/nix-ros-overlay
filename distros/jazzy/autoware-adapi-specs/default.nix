
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-autoware-adapi-specs";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_adapi_specs/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "ae1b19b23f9abc64abeb5db245979cc3d5278312edcba58525d832722fc4667b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_adapi_specs package";
    license = with lib.licenses; [ asl20 ];
  };
}
