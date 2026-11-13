
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-premium-radar-sample-msgs";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_premium_radar_sample_msgs/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "2f0f80ac27a6767b0f8a215e77badfd51e858b9e47e4fe0154c440d25ce02b7b";
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
