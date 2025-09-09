
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rmf-building-map-msgs";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_building_map_msgs-release/archive/release/kilted/rmf_building_map_msgs/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "a3e61df0ba7055389c51103b2822fd6a3e83c03dce9eed5a9254c43cabb3cab0";
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
