
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, geometry-msgs, controller-manager, urdf, pluginlib, tf, rosunit, nav-msgs, rostest, diff-drive-controller, std-msgs, std-srvs, catkin, realtime-tools, roscpp, gazebo-ros, boost, controller-interface, hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-ackermann-steering-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/ackermann_steering_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "2fcad6fb4a913c7ffcd316f9fc665c3d1e00838b892dad0dce0847e5e8c19dde";
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
