
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-building-map-msgs";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_building_map_msgs-release/archive/release/rolling/rmf_building_map_msgs/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "07c25dbb3063fbb8deacb63991e694a0c938e6eaaff0e316b19c2cd55fc95186";
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
