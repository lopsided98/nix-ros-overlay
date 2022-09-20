
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, actionlib-msgs, ament-cmake, builtin-interfaces, example-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-foxy-rosee-msg";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/rosee2_msg-release/archive/release/foxy/rosee_msg/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "b552235dc79a8e18a1acb015b78dee7d205f65c044043da4a73ad07cffddd4c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs actionlib-msgs builtin-interfaces example-interfaces geometry-msgs rosidl-default-runtime std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The rosee_msg package for ros2 version'';
    license = with lib.licenses; [ asl20 ];
  };
}
