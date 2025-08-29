
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, geographic-msgs, geographiclib, geometry-msgs, lanelet2-io }:
buildRosPackage {
  pname = "ros-humble-autoware-geography-utils";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_geography_utils/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ad1adc556d920bba1bb65d5df9df3ca79ef3103a1249434f501b92f4e4abfc6e";
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
