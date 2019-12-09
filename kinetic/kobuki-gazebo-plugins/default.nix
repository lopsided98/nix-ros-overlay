
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, geometry-msgs, std-msgs, tf, catkin, roscpp, kobuki-msgs, gazebo-ros, nav-msgs, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-gazebo-plugins";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_gazebo_plugins/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "c157ce87feed82ceba296a66a2f37ad4c77508f8e882e77bcd7d9d3149afd499";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs geometry-msgs std-msgs tf roscpp kobuki-msgs gazebo-ros nav-msgs gazebo-plugins ];
  propagatedBuildInputs = [ sensor-msgs boost geometry-msgs std-msgs tf roscpp kobuki-msgs gazebo-ros nav-msgs gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kobuki-specific ROS plugins for Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
