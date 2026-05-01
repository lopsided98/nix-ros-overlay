
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-rmf-building-map-msgs";
  version = "1.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_building_map_msgs-release/archive/release/lyrical/rmf_building_map_msgs/1.5.0-3.tar.gz";
    name = "1.5.0-3.tar.gz";
    sha256 = "c553dea0eca6023d0a73443399bb167fb6a52e4a2205ff1895f7cf5b543be4ae";
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
