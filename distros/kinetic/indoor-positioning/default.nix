
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-indoor-positioning";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/metratec/indoor_positioning-release/archive/release/kinetic/indoor_positioning/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "cc8fde923b77fbd3e67509827ddd6f2c0324af1b85d9f8ce116ae8ac802cc419";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime pythonPackages.numpy pythonPackages.pyserial pythonPackages.pyyaml pythonPackages.scipy roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a ROS package for the metraTec Indoor Positioning System.
    You can use the regular IPS for zone location of your robot
    or the IPS+ products for 3D-position-estimation using UWB ranging.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
