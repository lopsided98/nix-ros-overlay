
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common }:
buildRosPackage {
  pname = "ros-humble-autoware-adapi-specs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_adapi_specs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "6d1b5a77dc965a495a44cc34e0f969fbe22854969451302fc68f1b64616a61fd";
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
