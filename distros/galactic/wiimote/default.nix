
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bluez, cwiid, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, wiimote-msgs }:
buildRosPackage {
  pname = "ros-galactic-wiimote";
  version = "3.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/galactic/wiimote/3.0.0-5.tar.gz";
    name = "3.0.0-5.tar.gz";
    sha256 = "11100d028ef758a3d8a04ab3430f4263228874c03f402088e72bc368897ca716";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bluez cwiid rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs wiimote-msgs ];
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
    license = with lib.licenses; [ gpl1 ];
  };
}
