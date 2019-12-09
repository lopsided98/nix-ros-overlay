
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, catkin, actionlib-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-simple-drive";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/danielsnider/simple_drive-release/archive/release/kinetic/simple_drive/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "abe34cd8127d63aaca2d44e70634d780cbfdb6cef5b6ae9d8076a01796eaeeca";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs actionlib-msgs rospy ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs actionlib-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A full, but simple robot drive system. Includes skid steering joystick teleoperation, control of a panning servo, a cmd_vel multiplexer, and Arduino firmware.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
