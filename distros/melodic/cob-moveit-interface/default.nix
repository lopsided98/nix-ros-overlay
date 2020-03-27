
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, pythonPackages, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-moveit-interface";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_moveit_interface/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "a4156a645bb87baf9b04025f6192a4edf53858b81ae10dcb44a441318337ca58";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander pythonPackages.six rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
