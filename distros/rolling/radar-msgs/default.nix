
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-radar-msgs";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/radar_msgs-release/archive/release/rolling/radar_msgs/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "cc91fbc52fa04881e7c6a10bf9beaa6db87c47540ec8ba2bbd6605bc76ddb65b";
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
