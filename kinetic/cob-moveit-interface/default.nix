
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, moveit-commander, tf, catkin, rospy, cob-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-interface";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_moveit_interface/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "212193d20108fb24a46552d07ec052ca8335537e23960bc19ab99ed030568820";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs moveit-commander tf rospy cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
