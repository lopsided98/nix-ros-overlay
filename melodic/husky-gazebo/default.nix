
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, husky-control, husky-description, multimaster-launch, pointcloud-to-laserscan, roslaunch, rostopic }:
buildRosPackage {
  pname = "ros-melodic-husky-gazebo";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_gazebo/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "19ba9b5eaf533e3685eca5564218f3e6086ad5fabab3e59d988f8028d72757da";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins husky-control husky-description multimaster-launch pointcloud-to-laserscan rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
