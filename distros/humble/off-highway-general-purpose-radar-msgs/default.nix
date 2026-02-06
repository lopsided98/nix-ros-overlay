
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-general-purpose-radar-msgs";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_general_purpose_radar_msgs/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "a10288453ab0f6be84b9bf6818ee446e61d8d5f34479f344194667f712f62b6b";
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
