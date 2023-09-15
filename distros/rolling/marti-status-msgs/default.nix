
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-marti-status-msgs";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/rolling/marti_status_msgs/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "ca91eb98a836f7c92f827fe792292979710f54f36e848c058a6a8522fa0fec88";
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
