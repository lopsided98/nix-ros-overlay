
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, geometry-msgs, controller-manager, urdf, pluginlib, tf, rosunit, nav-msgs, rostest, diff-drive-controller, std-msgs, std-srvs, catkin, realtime-tools, roscpp, gazebo-ros, boost, controller-interface, hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-ackermann-steering-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ackermann_steering_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "d6de33231e9dfdcb67a15c0c397f77d3e3e656823cabd02eb2464ba4a617b83a";
  };

  buildType = "catkin";
  buildInputs = [ boost controller-interface urdf hardware-interface pluginlib tf realtime-tools diff-drive-controller roscpp nav-msgs ];
  checkInputs = [ xacro geometry-msgs controller-manager std-msgs std-srvs rosunit gazebo-ros rostest ];
  propagatedBuildInputs = [ boost controller-interface urdf hardware-interface pluginlib tf realtime-tools diff-drive-controller roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
