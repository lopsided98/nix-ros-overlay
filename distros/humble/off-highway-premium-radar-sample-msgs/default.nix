
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-premium-radar-sample-msgs";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_premium_radar_sample_msgs/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "e892ce0022c86a1c4a0f8f1d44ff55076ef5537ee9cd7d1f69234ce6cc89359d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_premium_radar_sample_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
