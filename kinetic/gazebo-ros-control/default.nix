
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, hardware-interface, controller-manager, pluginlib, joint-limits-interface, control-toolbox, catkin, gazebo-dev, urdf, angles, std-msgs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-ros-control";
  version = "2.5.18-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros_control/2.5.18-1.tar.gz;
    sha256 = "81dca564624e7e58f83ba522de9e7c2d69f563689751d2096a92030d7c722832";
  };

  buildInputs = [ controller-manager hardware-interface pluginlib control-toolbox joint-limits-interface gazebo-dev urdf angles std-msgs roscpp transmission-interface ];
  propagatedBuildInputs = [ gazebo-ros hardware-interface controller-manager pluginlib control-toolbox joint-limits-interface urdf angles std-msgs roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
