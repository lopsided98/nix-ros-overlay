
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-rosbridge-msgs";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/rosbridge_msgs/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "57435d01185c26b228cacc31f231920472cad72abdaac8cce8d7c77f1900eda4";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Package containing message files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
