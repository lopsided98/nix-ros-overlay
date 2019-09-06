
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-type-introspection, catkin, rospy, topic-tools, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-topic-switch";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/hakuturu583/topic_switch-release/archive/release/kinetic/topic_switch/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "9b5b761ac6295f5d15ec568c9972998153057ecf6caab16e8d45122f76d93799";
  };

  buildType = "catkin";
  buildInputs = [ topic-tools ros-type-introspection roscpp rospy ];
  propagatedBuildInputs = [ topic-tools ros-type-introspection roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The topic_switch package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
