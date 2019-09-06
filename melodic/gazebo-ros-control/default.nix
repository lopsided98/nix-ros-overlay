
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, hardware-interface, controller-manager, pluginlib, joint-limits-interface, control-toolbox, catkin, gazebo-dev, urdf, angles, std-msgs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-gazebo-ros-control";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_ros_control/2.8.4-0.tar.gz";
    name = "2.8.4-0.tar.gz";
    sha256 = "bf13aeb1f6a28b8510e759106a5f8d5b0c34d2e05dee6078e1bd12447fd79727";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager hardware-interface pluginlib control-toolbox joint-limits-interface gazebo-dev urdf angles std-msgs roscpp transmission-interface ];
  propagatedBuildInputs = [ gazebo-ros hardware-interface controller-manager pluginlib control-toolbox joint-limits-interface urdf angles std-msgs roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
