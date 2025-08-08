
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-kilted-radar-msgs";
  version = "0.2.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/radar_msgs-release/archive/release/kilted/radar_msgs/0.2.2-4.tar.gz";
    name = "0.2.2-4.tar.gz";
    sha256 = "a3acb8712f147f678fbd33d2ce488b91d9abe32067a443c3fc9acae973c43c9b";
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
