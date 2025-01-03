
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ouster-sensor-msgs";
  version = "0.11.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/jazzy/ouster_sensor_msgs/0.11.1-6.tar.gz";
    name = "0.11.1-6.tar.gz";
    sha256 = "9e7ec3071f37e948f0d929c4891ec4340a719c0a1364bb9990b1042fd0386c98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ouster_ros message and service definitions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
