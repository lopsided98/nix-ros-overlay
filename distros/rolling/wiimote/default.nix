
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bluez, cwiid, geometry-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, wiimote-msgs }:
buildRosPackage {
  pname = "ros-rolling-wiimote";
  version = "3.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/wiimote/3.1.0-3.tar.gz";
    name = "3.1.0-3.tar.gz";
    sha256 = "081c0f716caf62a5d6b95069329c674f7ecd8ce8ffa21cae648708965fb4a3c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bluez cwiid geometry-msgs rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-msgs std-srvs wiimote-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote
    and its related peripherals, including the Nunchuk, Motion Plus, and
    (experimentally) the Classic. The package implements a ROS node that uses
    Bluetooth to communicate with the Wiimote device, obtaining accelerometer
    and gyro data, the state of LEDs, the IR camera, rumble (vibrator),
    buttons, joystick, and battery state. The node additionally enables ROS
    nodes to control the Wiimote's LEDs and vibration for feedback to the human
    Wiimote operator. LEDs and vibration may be switched on and off, or made to
    operate according to a timed pattern.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
