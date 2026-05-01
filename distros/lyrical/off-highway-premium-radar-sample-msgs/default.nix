
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-off-highway-premium-radar-sample-msgs";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/lyrical/off_highway_premium_radar_sample_msgs/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "6212fdd70df89e63886b74800d42e147b104a5fe5c8f9bf317b5a653ac0448d5";
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
