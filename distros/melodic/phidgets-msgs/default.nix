
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-phidgets-msgs";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_msgs/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "3a93c937d43ab6f4a715931ffb7bee9bd32cb5ab9d6e934536b89ef5e6620ece";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Custom ROS messages for Phidgets drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
