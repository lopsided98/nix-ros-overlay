
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-building-map-msgs";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_building_map_msgs-release/archive/release/rolling/rmf_building_map_msgs/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "9edefb1cce21d0d9f67d55a3a4400a91162c5446b5b228575ac8663cbd1a0271";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages used to send building maps'';
    license = with lib.licenses; [ asl20 ];
  };
}
