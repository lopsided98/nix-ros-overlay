
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ouster-sensor-msgs";
  version = "0.11.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/rolling/ouster_sensor_msgs/0.11.1-4.tar.gz";
    name = "0.11.1-4.tar.gz";
    sha256 = "a86f19e5ae511f1bccd5953c41a8a90b327c6043c08802123ad089db9cb7819f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ouster_ros message and service definitions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
