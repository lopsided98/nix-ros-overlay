
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, geographic-msgs, geographiclib, geometry-msgs, lanelet2-io }:
buildRosPackage {
  pname = "ros-humble-autoware-geography-utils";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_geography_utils/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "c831304578ea8650e50df6372655d5bbea5fb7a1aab6cad2c75e15a03fbf0b14";
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
