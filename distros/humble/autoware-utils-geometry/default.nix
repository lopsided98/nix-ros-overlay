
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-utils-math, autoware-utils-system, boost, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-geometry";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_geometry/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "e1020f183b087b838e160f426335cc83864d817d64a5dcfcf4df583b27a50bcf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common autoware-utils-system ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-utils-math boost tf2 tf2-eigen tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_geometry package";
    license = with lib.licenses; [ asl20 ];
  };
}
