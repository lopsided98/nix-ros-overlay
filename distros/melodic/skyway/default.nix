
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, message-generation, message-runtime, pluginlib, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-skyway";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ntt-t3/skyway_for_ros-release/archive/release/melodic/skyway/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "c9251b89d63c96468f302e5f12f162646dc483262d2595199a00010dce2e7060";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ message-runtime pluginlib roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for using SkyWay from ROS'';
    license = with lib.licenses; [ mit ];
  };
}
