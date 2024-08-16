
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-marti-dbw-msgs";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/jazzy/marti_dbw_msgs/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "da93be62dbf8f1b33a90b05c710e9c4b466a42d12e892a97964771641ecf363e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_dbw_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
