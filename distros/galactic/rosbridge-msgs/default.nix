
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-rosbridge-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/rosbridge_msgs/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "b789dd1035825fc8eaa0d67f5f9a58fd57b05037ee4f5c561e2fcf4ecfae867c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros builtin-interfaces rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Package containing message files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
