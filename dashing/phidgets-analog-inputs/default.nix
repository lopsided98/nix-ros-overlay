
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, launch, rclcpp, ament-cmake-ros, std-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-phidgets-analog-inputs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_analog_inputs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "812990ac8228071fd50f06add6b4c8234ca75c2558f5fae35bec4071d918f20f";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs phidgets-api rclcpp-components rclcpp ];
  propagatedBuildInputs = [ phidgets-api launch rclcpp std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Analog Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
