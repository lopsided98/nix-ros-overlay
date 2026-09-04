
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rbq-msgs";
  version = "1.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rbq_ros2-release/archive/release/humble/rbq_msgs/1.20.0-1.tar.gz";
    name = "1.20.0-1.tar.gz";
    sha256 = "f97136fcfc1828a3ced3118f269be9a9c334a62b9fb3723b5e0ae310168fa6b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message definitions for the RBQ quadruped robot";
    license = with lib.licenses; [ asl20 ];
  };
}
