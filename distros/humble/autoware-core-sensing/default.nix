
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-velocity-converter }:
buildRosPackage {
  pname = "ros-humble-autoware-core-sensing";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_sensing/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "9ffe369ceaa3805fabb439b6c77b9ab1bdfba4beee7bac638af4040f17974022";
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
