
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-velocity-converter }:
buildRosPackage {
  pname = "ros-humble-autoware-core-sensing";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_sensing/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "4a7d16db749e5a4a0db909c82304e7108bc0ee2f9051deb8a7f9d2338422ed6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-vehicle-velocity-converter ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_sensing package";
    license = with lib.licenses; [ asl20 ];
  };
}
