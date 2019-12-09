
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-plugins, geometry-msgs, uuv-world-ros-plugins-msgs, catkin, gazebo-msgs, roscpp, gazebo-dev }:
buildRosPackage {
  pname = "ros-melodic-uuv-world-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_world_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "446876d4136616bf7c1762824b5d849a7275d4364ad2b56c8f249cb293de248a";
  };

  buildType = "catkin";
  buildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs gazebo-msgs roscpp gazebo-dev ];
  propagatedBuildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs gazebo-msgs roscpp gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
