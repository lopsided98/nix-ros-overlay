
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-msgs, geometry-msgs, roscpp, uuv-world-plugins, uuv-world-ros-plugins-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-world-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_world_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "446876d4136616bf7c1762824b5d849a7275d4364ad2b56c8f249cb293de248a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs geometry-msgs roscpp uuv-world-plugins uuv-world-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
