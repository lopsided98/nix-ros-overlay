
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, geographic-msgs, geographiclib, geometry-msgs, lanelet2-io }:
buildRosPackage {
  pname = "ros-humble-autoware-geography-utils";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_geography_utils/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "e27493f1b69885cc40ac810e6ba09ad5f50d2b5b09c71f620616c22080f70fc9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs geographic-msgs geographiclib geometry-msgs lanelet2-io ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_geography_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
