
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-microstrain-inertial-examples";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/humble/microstrain_inertial_examples/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "0bc1855ea483538b2e921f4ea771fbb9ebef0bc0e5295b770ca14aad812ac18c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ microstrain-inertial-msgs rclcpp rclcpp-components rclpy sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).'';
    license = with lib.licenses; [ mit ];
  };
}
