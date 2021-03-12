
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a8c2cd6af1a49a18bd30abbd3778bd91ecdeb04e75a89b4afeb5e425b996db01";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Custom ROS messages for Phidgets drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
