
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, lifecycle-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safevisionary-base, sick-safevisionary-interfaces }:
buildRosPackage {
  pname = "ros-kilted-sick-safevisionary-driver";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/kilted/sick_safevisionary_driver/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "df99c432674a42e643f39da8fd455257c3fea325ae81829ca60b29ad630cc0ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge lifecycle-msgs rclcpp rclcpp-lifecycle sensor-msgs sick-safevisionary-base sick-safevisionary-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides an interface to read the sensor output of a SICK Safevisionary sensor in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
