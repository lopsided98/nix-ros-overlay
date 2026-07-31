
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-velocity-converter }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-sensing";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_sensing/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "ea931e6410c9399629f4ab528d5953e82c401020b4ce73da7f31ee49624f9914";
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
