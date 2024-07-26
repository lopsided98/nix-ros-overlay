
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-radar-msgs";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_radar_msgs/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "8b7962f19db69a2e75d8ec7cd5be8fba29e085dce190f669cfc63a33628e48a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_radar_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
