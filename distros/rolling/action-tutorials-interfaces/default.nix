
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-interfaces";
  version = "0.33.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_interfaces/0.33.1-1.tar.gz";
    name = "0.33.1-1.tar.gz";
    sha256 = "edd6d93dc5dc703c4fc9fa4c081b5cb2770636bcd736ce453b932785fba510ac";
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
