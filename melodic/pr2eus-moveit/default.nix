
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, pr2eus, roseus, pr2-moveit-config, catkin, pr2-gazebo, pr2-moveit-plugins, moveit-msgs, rostest, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2eus-moveit";
  version = "0.3.14-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/melodic/pr2eus_moveit/0.3.14-3.tar.gz";
    name = "0.3.14-3.tar.gz";
    sha256 = "94e4eea9aa6fad2ae767226e050f40e01790fba0afe0c0717ff9cf90bb218b1e";
  };

  buildType = "catkin";
  buildInputs = [ pr2eus moveit-msgs roseus control-msgs ];
  checkInputs = [ moveit-planners-ompl pr2-moveit-config pr2-gazebo pr2-moveit-plugins rostest ];
  propagatedBuildInputs = [ pr2eus moveit-msgs roseus control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_moveit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
