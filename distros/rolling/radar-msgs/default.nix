
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-radar-msgs";
  version = "0.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/radar_msgs-release/archive/release/rolling/radar_msgs/0.2.2-3.tar.gz";
    name = "0.2.2-3.tar.gz";
    sha256 = "ed53a011c79d3553d40af9ecca7eac922eb145e10966b2eb58ecc159c283967f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-generators std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standard ROS messages for radars'';
    license = with lib.licenses; [ asl20 ];
  };
}
