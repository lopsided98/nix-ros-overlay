
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rmf-site-map-msgs";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/humble/rmf_site_map_msgs/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "5a3a1fdae493205cf742f7bc08b487efe8b07d44a9530658582ce7e041aada99";
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
