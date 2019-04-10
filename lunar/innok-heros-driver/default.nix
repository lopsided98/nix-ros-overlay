
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-innok-heros-driver";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/innokrobotics/innok_heros_driver-release/archive/release/lunar/innok_heros_driver/1.0.3-0.tar.gz;
    sha256 = "1637b5f1e495f67fac87b2ee222a45690bf9c079c4999769ced34cf3299d82e7";
  };

  buildInputs = [ std-msgs tf geometry-msgs rospy ];
  propagatedBuildInputs = [ std-msgs tf geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Innok Heros robot plattform'';
    #license = lib.licenses.BSD;
  };
}
