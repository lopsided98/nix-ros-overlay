
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy-mouse";
  version = "0.1.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/joy_mouse/0.1.17-2.tar.gz";
    name = "0.1.17-2.tar.gz";
    sha256 = "b8eda6797f4e9bcb7f121909d00359bf9542b60fbf5c2dd79410ae9a98979378";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.pyudev rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The joy_mouse package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
