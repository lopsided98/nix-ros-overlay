
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marti-can-msgs";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/humble/marti_can_msgs/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "31ec6605d3c646369a4da4f64c4f04aaea51d83f0ce46f45bef98eb1b5d4eab4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_can_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
