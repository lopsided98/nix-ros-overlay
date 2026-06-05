
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-status-msgs";
  version = "1.6.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_status_msgs/1.6.1-4.tar.gz";
    name = "1.6.1-4.tar.gz";
    sha256 = "8245df717927e4819aa07a4cd848b2785c474d42a0f5152a8daeca3a2b0a9336";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_status_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
