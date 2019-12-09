
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rospy, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-joy-mouse";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/joy_mouse/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "21bff14799c179bb5e86a0bfd5a0a08623c95d518c0be46d95cc7b89fd7c248d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs rospy pythonPackages.pyudev ];
  propagatedBuildInputs = [ sensor-msgs rospy pythonPackages.pyudev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The joy_mouse package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
