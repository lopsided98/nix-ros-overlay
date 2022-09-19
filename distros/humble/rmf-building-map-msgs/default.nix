
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rmf-building-map-msgs";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_building_map_msgs-release/archive/release/humble/rmf_building_map_msgs/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "79a22962c463a40bee6c7fb356ab3dd0b727a19135a1e97e4fe6a9d33daa3494";
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
