
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, kobuki-description, kobuki-gazebo-plugins, kobuki-random-walker, kobuki-safety-controller, robot-state-publisher, yocs-cmd-vel-mux }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-gazebo";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_gazebo/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "0478e18c65b686328b7a9e97c401e46077d8ce7803b8af2f5600ca8074a46008";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros kobuki-description kobuki-gazebo-plugins kobuki-random-walker kobuki-safety-controller robot-state-publisher yocs-cmd-vel-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kobuki simulation for Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
