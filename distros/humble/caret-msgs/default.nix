
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-caret-msgs";
  version = "0.5.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/caret_trace-release/archive/release/humble/caret_msgs/0.5.0-6.tar.gz";
    name = "0.5.0-6.tar.gz";
    sha256 = "5c360218822c58a4a1db3a3b07356619825ebb45dc6c785c17b80b91a11ebdf0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message definitions for CARET'';
    license = with lib.licenses; [ asl20 ];
  };
}
