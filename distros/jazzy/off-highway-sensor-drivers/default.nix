
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, off-highway-can, off-highway-general-purpose-radar, off-highway-general-purpose-radar-msgs, off-highway-premium-radar, off-highway-premium-radar-msgs, off-highway-premium-radar-sample, off-highway-premium-radar-sample-msgs, off-highway-radar, off-highway-radar-msgs, off-highway-uss, off-highway-uss-msgs }:
buildRosPackage {
  pname = "ros-jazzy-off-highway-sensor-drivers";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/jazzy/off_highway_sensor_drivers/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c6590dc98fef57ef6795d33767770c41fb7fcad13ea9b7edbba89117111da1c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ off-highway-can off-highway-general-purpose-radar off-highway-general-purpose-radar-msgs off-highway-premium-radar off-highway-premium-radar-msgs off-highway-premium-radar-sample off-highway-premium-radar-sample-msgs off-highway-radar off-highway-radar-msgs off-highway-uss off-highway-uss-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_sensor_drivers package";
    license = with lib.licenses; [ asl20 ];
  };
}
