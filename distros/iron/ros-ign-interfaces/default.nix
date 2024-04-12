
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, ros-gz-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ros-ign-interfaces";
  version = "0.254.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_interfaces/0.254.1-1.tar.gz";
    name = "0.254.1-1.tar.gz";
    sha256 = "c6dc63f9fad36a4448236baf8378d3bc8824b6501beefa795363c8265ad6eea7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs ros-gz-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Shim package to redirect to ros_gz_interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
