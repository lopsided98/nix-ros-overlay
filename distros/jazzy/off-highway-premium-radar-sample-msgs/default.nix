
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-off-highway-premium-radar-sample-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/jazzy/off_highway_premium_radar_sample_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ea823ea42873aee1f6915e97a1f58a939854e7620fab56ff543047c3320c6375";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The off_highway_premium_radar_sample_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
