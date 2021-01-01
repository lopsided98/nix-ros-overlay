
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, katana, katana-arm-gazebo, katana-description, katana-gazebo-plugins, katana-moveit-ikfast-plugin, katana-msgs, katana-teleop, katana-tutorials, kni }:
buildRosPackage {
  pname = "ros-kinetic-katana-driver";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_driver/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "3d5d56cedaa4edeb93f670ce1c9731d86f7d289ffcccac3bc04dcac9ab7975c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ katana katana-arm-gazebo katana-description katana-gazebo-plugins katana-moveit-ikfast-plugin katana-msgs katana-teleop katana-tutorials kni ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains all descriptions, drivers and bringup facilities for Neuronics Katana 450 arm.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
