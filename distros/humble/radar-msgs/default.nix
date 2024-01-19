
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-radar-msgs";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/radar_msgs-release/archive/release/humble/radar_msgs/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "d45ab12ca8e1d52d0dadccc5a88db3cbaf8ef9dacd7e2f466e2e2f6c26fedbae";
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
