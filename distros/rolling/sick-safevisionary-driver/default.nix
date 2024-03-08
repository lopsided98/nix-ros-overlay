
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, lifecycle-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safevisionary-base, sick-safevisionary-interfaces }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-driver";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_driver/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "fba5a1e97efba7275498285c852358074af793649f814c980b64bd2bdc5194d9";
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
