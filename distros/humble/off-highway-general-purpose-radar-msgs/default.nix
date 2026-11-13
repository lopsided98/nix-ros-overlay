
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-general-purpose-radar-msgs";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_general_purpose_radar_msgs/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "a253d60d6d9ad648fdf7afeb40f8e0de35c64d3436754322eccf6bd80beb046c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The off_highway_general_purpose_radar_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
