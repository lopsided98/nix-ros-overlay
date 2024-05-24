
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rmf-building-map-msgs";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_building_map_msgs-release/archive/release/jazzy/rmf_building_map_msgs/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "9ec4818f63ba8ec528ddd841a4b6b7d9dc71b9241b720c416ec160983610def5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages used to send building maps";
    license = with lib.licenses; [ asl20 ];
  };
}
