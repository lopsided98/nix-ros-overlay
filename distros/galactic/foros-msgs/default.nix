
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-foros-msgs";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foros-release/archive/release/galactic/foros_msgs/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "4cc2a7d10277119bc4b23b706ec331d6109567bfe3b9a0a20a715bb90773afa6";
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
