
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, rospy-message-converter, rosservice, rostest, rostopic, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rostest-node-interface-validation";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tecnalia-advancedmanufacturing-robotics";
        repo = "rostest_node_interface_validation-release";
        rev = "release/melodic/rostest_node_interface_validation/0.2.0-1";
        sha256 = "sha256-K//RBrzpGit3JvXAwc8M8VfkoE6t1ssb6B4KR09clCg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest std-srvs ];
  propagatedBuildInputs = [ rospy rospy-message-converter rosservice rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Additiional testing tools at node level'';
    license = with lib.licenses; [ asl20 ];
  };
}
