
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, robot-localization, roscpp, rtabmap-conversions, rtabmap-costmap-plugins, rtabmap-demos, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-examples";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_examples/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "8e272f7f52b859f441491557b9757f4d4667678e54bf3f677f44f4295a6aa249";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-filters robot-localization roscpp rtabmap-conversions rtabmap-costmap-plugins rtabmap-demos rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's example launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
