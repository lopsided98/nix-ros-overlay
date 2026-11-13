
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-off-highway-general-purpose-radar-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_general_purpose_radar_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "59018f74cda1cb30bcb8a40d172f4efc37b835488952d455a862af86941dfd44";
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
