
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-utils-math, autoware-utils-system, boost, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-geometry";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_geometry/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "4bb5f18f0e731697481733c3583393cee0daa222b09179fc504ce31707020510";
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
