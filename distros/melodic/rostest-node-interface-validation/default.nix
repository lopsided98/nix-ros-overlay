
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, rospy-message-converter, rosservice, rostest, rostopic, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rostest-node-interface-validation";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/tecnalia-advancedmanufacturing-robotics/rostest_node_interface_validation-release/archive/release/melodic/rostest_node_interface_validation/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "04d36f1346f96b88c4bcbece65fa1917697ffc129132adf4a307e8bd44dc18dc";
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
