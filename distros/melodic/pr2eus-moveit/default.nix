
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, moveit-msgs, moveit-planners-ompl, pr2-gazebo, pr2-moveit-config, pr2-moveit-plugins, pr2eus, roseus, rostest }:
buildRosPackage {
  pname = "ros-melodic-pr2eus-moveit";
  version = "0.3.14-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/melodic/pr2eus_moveit/0.3.14-3.tar.gz";
    name = "0.3.14-3.tar.gz";
    sha256 = "94e4eea9aa6fad2ae767226e050f40e01790fba0afe0c0717ff9cf90bb218b1e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-planners-ompl pr2-gazebo pr2-moveit-config pr2-moveit-plugins rostest ];
  propagatedBuildInputs = [ control-msgs moveit-msgs pr2eus roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_moveit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
