
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rosbridge-msgs";
  version = "1.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/rosbridge_msgs/1.3.2-3.tar.gz";
    name = "1.3.2-3.tar.gz";
    sha256 = "2e0bdf1537c731da4fdc864d19189f9face7e1dcc35cf11171ec2408c503bffb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros builtin-interfaces rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = "Package containing message files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
