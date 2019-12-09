
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-description, kobuki-random-walker, robot-state-publisher, kobuki-safety-controller, catkin, yocs-cmd-vel-mux, kobuki-gazebo-plugins, gazebo-ros, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-gazebo";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_gazebo/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "0478e18c65b686328b7a9e97c401e46077d8ce7803b8af2f5600ca8074a46008";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-description robot-state-publisher kobuki-safety-controller gazebo-ros yocs-cmd-vel-mux kobuki-gazebo-plugins kobuki-random-walker gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kobuki simulation for Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
