
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-automotive-navigation-msgs";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/melodic/automotive_navigation_msgs/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "acad76a6269575909380ef612341a5a0dd066e32ea35455bb50624a8262d164b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Messages for Navigation Objectives in Automotive Automation Software'';
    license = with lib.licenses; [ mit ];
  };
}
