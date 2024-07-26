
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, off-highway-can, off-highway-general-purpose-radar, off-highway-general-purpose-radar-msgs, off-highway-premium-radar-sample, off-highway-premium-radar-sample-msgs, off-highway-radar, off-highway-radar-msgs, off-highway-uss, off-highway-uss-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-sensor-drivers";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_sensor_drivers/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "27e6b9fae1a35de427d1b0c2386902c99958954b14885b475bb8a0d3a68fcef6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ off-highway-can off-highway-general-purpose-radar off-highway-general-purpose-radar-msgs off-highway-premium-radar-sample off-highway-premium-radar-sample-msgs off-highway-radar off-highway-radar-msgs off-highway-uss off-highway-uss-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_sensor_drivers package";
    license = with lib.licenses; [ asl20 ];
  };
}
