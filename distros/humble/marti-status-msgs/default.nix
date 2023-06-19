
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marti-status-msgs";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/humble/marti_status_msgs/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "443e9685e9cec9a6f3ace091a180f167013672131961afd873d7e51a690d977d";
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
