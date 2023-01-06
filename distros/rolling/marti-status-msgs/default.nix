
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-marti-status-msgs";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/rolling/marti_status_msgs/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "c3faa422ac7e0672cb553925e7ea07aafae77f44be50b7cbc6a0a7712e88c8de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_status_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
