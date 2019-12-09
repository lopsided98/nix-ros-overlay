
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, katana-moveit-ikfast-plugin, katana-arm-gazebo, katana-msgs, katana-teleop, catkin, katana-gazebo-plugins, katana-description, katana, kni, katana-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-katana-driver";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_driver/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "3d5d56cedaa4edeb93f670ce1c9731d86f7d289ffcccac3bc04dcac9ab7975c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ katana-arm-gazebo katana-msgs katana-teleop katana-gazebo-plugins katana-description katana kni katana-tutorials katana-moveit-ikfast-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains all descriptions, drivers and bringup facilities for Neuronics Katana 450 arm.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
