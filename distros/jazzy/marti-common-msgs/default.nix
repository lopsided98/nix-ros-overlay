
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-marti-common-msgs";
  version = "1.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/jazzy/marti_common_msgs/1.5.2-3.tar.gz";
    name = "1.5.2-3.tar.gz";
    sha256 = "f5b77e19721c3326b5b59d9839a913e7871d37306bc7cede4363a54ea26dc105";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_common_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
