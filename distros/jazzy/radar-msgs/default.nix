
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-radar-msgs";
  version = "0.2.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/radar_msgs-release/archive/release/jazzy/radar_msgs/0.2.2-4.tar.gz";
    name = "0.2.2-4.tar.gz";
    sha256 = "69d179657e854e5c7fe6036dd02987d34c7b49629fd1318fe94f0045d423670f";
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
