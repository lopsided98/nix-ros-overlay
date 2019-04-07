
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, sensor-msgs, linuxConsoleTools, pythonPackages, catkin, rosgraph, rospy, diagnostic-msgs, libusb }:
buildRosPackage {
  pname = "ros-melodic-ps3joy";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/melodic/ps3joy/1.12.0-0.tar.gz;
    sha256 = "c3b9aa3c6b572091d412fa7e2904b1c799471ba99aed7dd1b906f2b9e35b0f2a";
  };

  buildInputs = [ rosgraph pythonPackages.pybluez libusb bluez diagnostic-msgs sensor-msgs linuxConsoleTools rospy ];
  propagatedBuildInputs = [ rosgraph pythonPackages.pybluez libusb bluez diagnostic-msgs sensor-msgs linuxConsoleTools rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Playstation 3 SIXAXIS or DUAL SHOCK 3 joystick driver.
    Driver for the Sony PlayStation 3 SIXAXIS or DUAL SHOCK 3
    joysticks. In its current state, this driver is not compatible
    with the use of other Bluetooth HID devices. The driver listens
    for a connection on the HID ports, starts the joystick
    streaming data, and passes the data to the Linux uinput device
    so that it shows up as a normal joystick.'';
    #license = lib.licenses.BSD;
  };
}
