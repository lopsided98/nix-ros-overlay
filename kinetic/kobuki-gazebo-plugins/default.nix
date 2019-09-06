
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, kobuki-msgs, boost, sensor-msgs, catkin, roscpp, gazebo-plugins, nav-msgs, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-gazebo-plugins";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_gazebo_plugins/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "c157ce87feed82ceba296a66a2f37ad4c77508f8e882e77bcd7d9d3149afd499";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros kobuki-msgs boost sensor-msgs roscpp gazebo-plugins nav-msgs std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ gazebo-ros kobuki-msgs boost sensor-msgs roscpp gazebo-plugins nav-msgs std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kobuki-specific ROS plugins for Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
