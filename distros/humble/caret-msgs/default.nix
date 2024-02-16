
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-caret-msgs";
  version = "0.5.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/caret_trace-release/archive/release/humble/caret_msgs/0.5.0-4.tar.gz";
    name = "0.5.0-4.tar.gz";
    sha256 = "dd8bdae66cbaf0a7b315e76438dd91d42d9f92bbbd3e6051b656bf8d5011066c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message definitions for CARET'';
    license = with lib.licenses; [ asl20 ];
  };
}
