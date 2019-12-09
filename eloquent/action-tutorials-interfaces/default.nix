
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-default-generators, action-msgs }:
buildRosPackage {
  pname = "ros-eloquent-action-tutorials-interfaces";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/action_tutorials_interfaces/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "0d61af1d7858ebcdd555789654ba723edeb0e4aa08280b4ef6302c7b5e709b90";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-default-runtime action-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Action tutorials action'';
    license = with lib.licenses; [ asl20 ];
  };
}
