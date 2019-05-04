
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-kinetic-pddl-msgs";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_planning-release/archive/release/kinetic/pddl_msgs/0.1.10-0.tar.gz;
    sha256 = "90b3431f779c8d9db5d15d509e22dd1a7fc9761da0f03b2c8cee140964ca1d19";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''message for pddl planner'';
    license = with lib.licenses; [ asl20 ];
  };
}
