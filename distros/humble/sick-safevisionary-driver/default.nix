
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, lifecycle-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safevisionary-base, sick-safevisionary-interfaces }:
buildRosPackage {
  pname = "ros-humble-sick-safevisionary-driver";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/humble/sick_safevisionary_driver/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "df5a6d777b89453d8278d09737027f53082e32fcf7f03f0a5d1fdd51dcbbfd7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge lifecycle-msgs rclcpp rclcpp-lifecycle sensor-msgs sick-safevisionary-base sick-safevisionary-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides an interface to read the sensor output of a SICK safeVisionary sensor in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
