
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, off-highway-can, off-highway-general-purpose-radar, off-highway-general-purpose-radar-msgs, off-highway-premium-radar-sample, off-highway-premium-radar-sample-msgs, off-highway-radar, off-highway-radar-msgs, off-highway-uss, off-highway-uss-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-sensor-drivers";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_sensor_drivers/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "4365fea24f4e6d1d31d4d99dc4e521f8ddc4f25661d8b95bb04250ff6f8ceb9e";
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
