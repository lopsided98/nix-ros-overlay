
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, katana-gazebo-plugins, katana-msgs, katana-arm-gazebo, catkin, katana-description, katana-tutorials, katana, kni, katana-moveit-ikfast-plugin, katana-teleop }:
buildRosPackage {
  pname = "ros-kinetic-katana-driver";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_driver/1.1.2-0.tar.gz;
    sha256 = "3d5d56cedaa4edeb93f670ce1c9731d86f7d289ffcccac3bc04dcac9ab7975c9";
  };

  propagatedBuildInputs = [ katana-gazebo-plugins katana-msgs katana-arm-gazebo katana-description katana-tutorials kni katana-teleop katana-moveit-ikfast-plugin katana ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains all descriptions, drivers and bringup facilities for Neuronics Katana 450 arm.'';
    #license = lib.licenses.BSD, GPL;
  };
}
