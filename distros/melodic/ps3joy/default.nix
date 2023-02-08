
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, catkin, diagnostic-msgs, libusb1, linuxConsoleTools, pythonPackages, rosgraph, roslint, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-ps3joy";
  version = "1.14.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "joystick_drivers-release";
        rev = "release/melodic/ps3joy/1.14.0-1";
        sha256 = "sha256-HDAID2JtpjpEot/FAhBb73kELbbQTiNJN8vAJMET/VE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ bluez diagnostic-msgs libusb1 linuxConsoleTools pythonPackages.pybluez rosgraph rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Playstation 3 SIXAXIS or DUAL SHOCK 3 joystick driver.
    Driver for the Sony PlayStation 3 SIXAXIS or DUAL SHOCK 3
    joysticks. In its current state, this driver is not compatible
    with the use of other Bluetooth HID devices. The driver listens
    for a connection on the HID ports, starts the joystick
    streaming data, and passes the data to the Linux uinput device
    so that it shows up as a normal joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
