
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gazebo-plugins, gazebo-ros, geometry-msgs, kobuki-msgs, nav-msgs, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-gazebo-plugins";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_gazebo_plugins/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "c157ce87feed82ceba296a66a2f37ad4c77508f8e882e77bcd7d9d3149afd499";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost gazebo-plugins gazebo-ros geometry-msgs kobuki-msgs nav-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kobuki-specific ROS plugins for Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
