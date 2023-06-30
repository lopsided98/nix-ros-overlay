
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-gps-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gps_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "14dabb8fb5ce2767fcc68397be71f45cce3c8ca19a4dedb54316a15a6a29aff1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''GPS messages for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
