
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-radar-msgs";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/radar_msgs-release/archive/release/rolling/radar_msgs/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "f0898e646ac3f5a3a4b21b62cd14d1f677c4f2e562f5cf933d4f301cb4e4d8cc";
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
