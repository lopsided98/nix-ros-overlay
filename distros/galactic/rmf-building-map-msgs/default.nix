
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-rmf-building-map-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_building_map_msgs-release/archive/release/galactic/rmf_building_map_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "32105bd1e925e358048cc1d33d517e8effb1149fce1b07f3a22db3b8de725130";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages used to send building maps'';
    license = with lib.licenses; [ asl20 ];
  };
}
