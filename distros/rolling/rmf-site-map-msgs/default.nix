
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-site-map-msgs";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_site_map_msgs/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "e9bf84d86872f20f06fa9917b9d3c8ef971c0ab7250bca1e4b5aa72e63f91ab4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages that contain GeoPackage maps'';
    license = with lib.licenses; [ asl20 ];
  };
}
