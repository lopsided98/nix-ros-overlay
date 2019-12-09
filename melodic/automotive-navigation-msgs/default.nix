
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-automotive-navigation-msgs";
  version = "2.0.3";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/melodic/automotive_navigation_msgs/2.0.3-0.tar.gz";
    name = "2.0.3-0.tar.gz";
    sha256 = "c47b3746216db63830a678b6d220f7f39bacebe9980d4fa40aeb106012873da1";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Messages for Navigation Objectives in Automotive Automation Software'';
    license = with lib.licenses; [ mit ];
  };
}
