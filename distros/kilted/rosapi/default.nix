
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-ros, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2node, ros2service, ros2topic, rosapi-msgs, rosbridge-library, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-kilted-rosapi";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/kilted/rosapi/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "4db34dd445a7e09facb7e0e64e5525b7785193c6e164fc3f129e4c1bbaf488f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-mypy ament-cmake-pytest geometry-msgs rmw-dds-common sensor-msgs shape-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rclpy ros2node ros2service ros2topic rosapi-msgs rosbridge-library ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
