
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-radar-msgs";
  version = "0.2.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/radar_msgs-release/archive/release/rolling/radar_msgs/0.2.2-4.tar.gz";
    name = "0.2.2-4.tar.gz";
    sha256 = "7aaaf5fe40b0ad95bc3f815be99f7fc9cc7edbe632b206ee45ed5faa28aa899a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-generators std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Standard ROS messages for radars";
    license = with lib.licenses; [ asl20 ];
  };
}
