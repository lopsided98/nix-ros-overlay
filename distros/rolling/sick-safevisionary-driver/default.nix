
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, lifecycle-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safevisionary-base, sick-safevisionary-interfaces }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-driver";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_driver/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "b7104ce41ea54b715db4dd8744c86b57924de240acde5028328b4cf11205444e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge lifecycle-msgs rclcpp rclcpp-lifecycle sensor-msgs sick-safevisionary-base sick-safevisionary-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides an interface to read the sensor output of a SICK Safevisionary sensor in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
