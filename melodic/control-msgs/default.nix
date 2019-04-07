
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, trajectory-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-control-msgs";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/control_msgs-release/archive/release/melodic/control_msgs/1.5.0-0.tar.gz;
    sha256 = "12c341b7f245c27bed738494241445879e58aefa0368ba688c67fb114f852d58";
  };

  buildInputs = [ message-generation actionlib-msgs std-msgs trajectory-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs std-msgs trajectory-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''control_msgs contains base messages and actions useful for
    controlling robots.  It provides representations for controller
    setpoints and joint and cartesian trajectories.'';
    #license = lib.licenses.BSD;
  };
}
