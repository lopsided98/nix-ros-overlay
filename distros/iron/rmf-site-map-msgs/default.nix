
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rmf-site-map-msgs";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/iron/rmf_site_map_msgs/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "638518c8f753e025fd730d20b59343f62f4df2fb5de8cd2301f86a1cb0599534";
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
