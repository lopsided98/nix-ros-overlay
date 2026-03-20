
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-agnocast-sample-interfaces";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_sample_interfaces/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "09e8711148dc8ed7f0e9e96ca82abf79135dd96a937ba675249db10a9de7eb98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Sample interfaces for the Agnocast sample application.";
    license = with lib.licenses; [ asl20 ];
  };
}
