
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-ros, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2node, ros2service, ros2topic, rosapi-msgs, rosbridge-library, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosapi";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/rosapi/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "db3ca4b98aa31ce107b6f214b0ff9ebfef422c7c616da55475891267b2c87246";
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
