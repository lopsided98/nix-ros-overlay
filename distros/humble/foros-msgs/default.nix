
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-foros-msgs";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foros-release/archive/release/humble/foros_msgs/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "c24867bfbfeff57df397e773f49bf24d89f882d9f7163990bce78c7e11aa9140";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Fail over ROS messages (raft RPCs)'';
    license = with lib.licenses; [ asl20 ];
  };
}
