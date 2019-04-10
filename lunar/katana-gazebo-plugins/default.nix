
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, control-msgs, katana-msgs, trajectory-msgs, control-toolbox, sensor-msgs, catkin, actionlib }:
buildRosPackage {
  pname = "ros-lunar-katana-gazebo-plugins";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_gazebo_plugins/1.1.2-0.tar.gz;
    sha256 = "96a8ff8e3d80379aae4c3e6b3f85cdc246b0804def033376c67e91e448cf27f1";
  };

  buildInputs = [ gazebo-ros actionlib control-toolbox control-msgs katana-msgs trajectory-msgs sensor-msgs ];
  propagatedBuildInputs = [ gazebo-ros actionlib control-toolbox control-msgs katana-msgs trajectory-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides Gazebo plugins to simulate the Katana arm.'';
    #license = lib.licenses.GPL;
  };
}
