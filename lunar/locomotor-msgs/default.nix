
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-lunar-locomotor-msgs";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/locomotor_msgs/0.2.5-0.tar.gz;
    sha256 = "06d8b976f7a851c099afd20288b3b731f56f9fc48a34a3d5df260c60cf7bda87";
  };

  buildInputs = [ message-generation nav-2d-msgs actionlib-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definition for Locomotor'';
    #license = lib.licenses.BSD;
  };
}
