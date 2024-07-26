
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-site-map-msgs";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_site_map_msgs/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "85728c08a25ffee979a77afd8bf37b3c1ac7b3d8ecbff9949238d69448b78109";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages that contain GeoPackage maps";
    license = with lib.licenses; [ asl20 ];
  };
}
