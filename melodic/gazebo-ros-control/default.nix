
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-limits-interface, controller-manager, urdf, pluginlib, std-msgs, control-toolbox, hardware-interface, catkin, transmission-interface, roscpp, angles, gazebo-ros, gazebo-dev }:
buildRosPackage {
  pname = "ros-melodic-gazebo-ros-control";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_ros_control/2.8.4-0.tar.gz";
    name = "2.8.4-0.tar.gz";
    sha256 = "bf13aeb1f6a28b8510e759106a5f8d5b0c34d2e05dee6078e1bd12447fd79727";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager urdf hardware-interface pluginlib std-msgs joint-limits-interface control-toolbox transmission-interface roscpp angles gazebo-dev ];
  propagatedBuildInputs = [ controller-manager urdf hardware-interface pluginlib std-msgs joint-limits-interface gazebo-ros control-toolbox transmission-interface roscpp angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
