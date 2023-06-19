
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-interfaces";
  version = "0.30.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_interfaces/0.30.0-1.tar.gz";
    name = "0.30.0-1.tar.gz";
    sha256 = "9b71e361f97e354c52ad1a175e44f7379c13a6f947a0a7634c6dbf019b284752";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Action tutorials action'';
    license = with lib.licenses; [ asl20 ];
  };
}
