
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-automotive-navigation-msgs";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/melodic/automotive_navigation_msgs/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "b1e197ff14c2d36b74e3a178147299f8b4edef50728854eed3198021e0849bdd";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Messages for Navigation Objectives in Automotive Automation Software'';
    license = with lib.licenses; [ mit ];
  };
}
