
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, pythonPackages, rocon-console, rocon-service-pair-msgs, rosgraph, roslib, rosnode, rospy, rosservice, rostest, rostopic, rosunit, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-comms";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_python_comms/0.3.2-0";
        sha256 = "sha256-lZUcn7QkLczvbOrSlTAuwRkXCFEFbpktP2E4JfpuOJE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ genpy pythonPackages.pyyaml rocon-console rocon-service-pair-msgs rosgraph roslib rosnode rospy rosservice rostopic unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service pair libraries for pub/sub non-blocking services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
