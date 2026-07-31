
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common }:
buildRosPackage {
  pname = "ros-humble-autoware-adapi-specs";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_adapi_specs/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "c8b0c7680d24c0294dde60f32d4aac92debaa5a10d1265b2cb065515ea83d9b5";
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
