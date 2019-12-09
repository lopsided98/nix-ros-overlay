
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, builtin-interfaces, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-dashing-rosbridge-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/dashing/rosbridge_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "fd7732cba5d81a2160232e88f96641e0472681f6de9964c936c1b7822036d188";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake-ros ];

  meta = {
    description = ''Package containing message files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
