
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-perception-msgs";
  version = "1.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_perception_msgs/1.6.1-3.tar.gz";
    name = "1.6.1-3.tar.gz";
    sha256 = "457f382b5fe8cb7c7561d3aa6a93a64ff5c8e73398e3adad9c252612fd6ecb5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_perception_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
