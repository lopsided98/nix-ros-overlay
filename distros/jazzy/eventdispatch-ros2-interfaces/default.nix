
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-eventdispatch-ros2-interfaces";
  version = "0.2.25-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/jazzy/eventdispatch_ros2_interfaces/0.2.25-4.tar.gz";
    name = "0.2.25-4.tar.gz";
    sha256 = "b06478164112b4722faeb2df9888707e28574f924c13ba5ea11bd7e52fb53df6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROSEvent srv / msg";
    license = with lib.licenses; [ asl20 ];
  };
}
