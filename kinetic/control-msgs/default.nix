
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, trajectory-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-control-msgs";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/control_msgs-release/archive/release/kinetic/control_msgs/1.5.0-0.tar.gz;
    sha256 = "919129187d5eefc66a1d71bf61f5a45c0e38f5f64282885dbf1bd80c9568a406";
  };

  buildInputs = [ actionlib-msgs trajectory-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs trajectory-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''control_msgs contains base messages and actions useful for
    controlling robots.  It provides representations for controller
    setpoints and joint and cartesian trajectories.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
