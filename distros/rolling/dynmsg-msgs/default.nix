
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-dynmsg-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamic_message_introspection-release/archive/release/rolling/dynmsg_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "7b7c3585e9dde9bb761ccca9d3ec7ac178907b8f7966a3af451487d190db3b5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Test messages for dynamic message type loading";
    license = with lib.licenses; [ asl20 ];
  };
}
