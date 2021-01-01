
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, thormang3-action-module-msgs, thormang3-feet-ft-module-msgs, thormang3-head-control-module-msgs, thormang3-manipulation-module-msgs, thormang3-offset-tuner-msgs, thormang3-walking-module-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-msgs-release/archive/release/kinetic/thormang3_msgs/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "c82d081ea663893e9a923f7ea442fcfaae21fd5f37267a335773850caa2bf93c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ thormang3-action-module-msgs thormang3-feet-ft-module-msgs thormang3-head-control-module-msgs thormang3-manipulation-module-msgs thormang3-offset-tuner-msgs thormang3-walking-module-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the thormang3_msgs (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
