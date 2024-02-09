
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-caret-msgs";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/caret_trace-release/archive/release/humble/caret_msgs/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "a37fdd9b8787a8502aad98b68012fced36f37daec0cffb7a2192c9f16d3c9f6f";
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
