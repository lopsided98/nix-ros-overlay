
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, nav-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-map-msgs";
  version = "2.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/jazzy/map_msgs/2.4.1-2.tar.gz";
    name = "2.4.1-2.tar.gz";
    sha256 = "3daa5a068598da9bdd06bf28a48f6db64ebb3cf8537d5601a103360dfe857c0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This package defines messages commonly used in mapping packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
