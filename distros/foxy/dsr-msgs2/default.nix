
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-dsr-msgs2";
  version = "0.1.1-r4";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot2-release/archive/release/foxy/dsr_msgs2/0.1.1-4.tar.gz";
    name = "0.1.1-4.tar.gz";
    sha256 = "e3abf123677415e8a45929d79d9b1df9bfe90b41aabbc798af452316433b4909";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The dsr_msgs2 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
